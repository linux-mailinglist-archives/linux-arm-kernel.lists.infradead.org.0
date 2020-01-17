Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8674F140D9B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 16:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIQl0UmYSNZWQaJTV9db6dUlPHnGxtuFiQA4AR+H3Ss=; b=nw/9BD9nB1N/Rt
	JKMOrU9dUe01XEw8ASzEQ/D1qggG6Zljrc33AuZFjtPWwI1gqnAlgbPrriEAmFcuTmK4pada2aS1z
	0SN38zVXVuWSOh+yOImFCVKhx2x883793Tfy4UPsrBpv5emESdplgnoxnoNO1p7oN/JN1gB50RWBO
	ZDFWIqrALRl4Lp+qBDgfzwF52Puvf3z77Itn3Y4VvNvtu/xfv8oKXPxHuEXLmnUt9xgX0Ck/jZFiV
	8vV3UELPPgwFgNYrr9ALu6wZ6zrimQFAASIgS0my9dFPGjwZd1xFn+3HHRpX2JcTN+rGh3JfAYNol
	GMTtSHtH1sP5+0z6pl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isTLt-00005Z-Ms; Fri, 17 Jan 2020 15:16:01 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isTLf-0008VJ-3U; Fri, 17 Jan 2020 15:15:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C73C5AF41;
 Fri, 17 Jan 2020 15:15:45 +0000 (UTC)
From: =?UTF-8?q?Michal=20Koutn=C3=BD?= <mkoutny@suse.com>
To: cgroups@vger.kernel.org
Subject: [PATCH 2/3] cgroup: Iterate tasks that did not finish do_exit()
Date: Fri, 17 Jan 2020 16:15:32 +0100
Message-Id: <20200117151533.12381-3-mkoutny@suse.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200117151533.12381-1-mkoutny@suse.com>
References: <20200116043612.52782-1-surenb@google.com>
 <20200117151533.12381-1-mkoutny@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_071547_286293_C489E6AC 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linger.lee@mediatek.com, tomcherry@google.com, shuah@kernel.org,
 linux-kernel@vger.kernel.org, matthias.bgg@gmail.com,
 Li Zefan <lizefan@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, Johannes Weiner <hannes@cmpxchg.org>,
 Tejun Heo <tj@kernel.org>, alex.shi@linux.alibaba.com, kernel-team@android.com,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

UEZfRVhJVElORyBpcyBzZXQgZWFybGllciB0aGFuIGFjdHVhbCByZW1vdmFsIGZyb20gY3NzX3Nl
dCB3aGVuIGEgdGFzawppcyBleGl0dGluZy4gVGhpcyBjYW4gY29uZnVzZSBjZ3JvdXAucHJvY3Mg
cmVhZGVycyB3aG8gc2VlIG5vIFBGX0VYSVRJTkcKdGFza3MsIGhvd2V2ZXIsIHJtZGlyIGlzIGNo
ZWNraW5nIGFnYWluc3QgY3NzX3NldCBtZW1iZXJzaGlwIHNvIGl0IGNhbgp0cmFuc2l0aW9uYWxs
eSBmYWlsIHdpdGggRUJVU1kuCgpGaXggdGhpcyBieSBsaXN0aW5nIHRhc2tzIHRoYXQgd2VyZW4n
dCB1bmxpbmtlZCBmcm9tIGNzc19zZXQgYWN0aXZlCmxpc3RzLgpJdCBtYXkgaGFwcGVuIHRoYXQg
b3RoZXIgdXNlcnMgb2YgdGhlIHRhc2sgaXRlcmF0b3IgKHdpdGhvdXQKQ1NTX1RBU0tfSVRFUl9Q
Uk9DUykgc3BvdCBhIFBGX0VYSVRJTkcgdGFzayBiZWZvcmUgY2dyb3VwX2V4aXQoKS4gVGhpcwpp
cyBlcXVhbCB0byB0aGUgc3RhdGUgYmVmb3JlIGNvbW1pdCBjMDNjZDc3MzhhODMgKCJjZ3JvdXA6
IEluY2x1ZGUgZHlpbmcKbGVhZGVycyB3aXRoIGxpdmUgdGhyZWFkcyBpbiBQUk9DUyBpdGVyYXRp
b25zIikgYnV0IGl0IG1heSBiZSByZXZpZXdlZApsYXRlci4KClJlcG9ydGVkLWJ5OiBTdXJlbiBC
YWdoZGFzYXJ5YW4gPHN1cmVuYkBnb29nbGUuY29tPgpGaXhlczogYzAzY2Q3NzM4YTgzICgiY2dy
b3VwOiBJbmNsdWRlIGR5aW5nIGxlYWRlcnMgd2l0aCBsaXZlIHRocmVhZHMgaW4gUFJPQ1MgaXRl
cmF0aW9ucyIpClNpZ25lZC1vZmYtYnk6IE1pY2hhbCBLb3V0bsO9IDxta291dG55QHN1c2UuY29t
PgotLS0KIGtlcm5lbC9jZ3JvdXAvY2dyb3VwLmMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2tlcm5lbC9jZ3Jv
dXAvY2dyb3VwLmMgYi9rZXJuZWwvY2dyb3VwL2Nncm91cC5jCmluZGV4IGI1NjI4M2UxMzQ5MS4u
MTMyZDI1OGU3MTcyIDEwMDY0NAotLS0gYS9rZXJuZWwvY2dyb3VwL2Nncm91cC5jCisrKyBiL2tl
cm5lbC9jZ3JvdXAvY2dyb3VwLmMKQEAgLTQ0OTIsMTEgKzQ0OTIsMTIgQEAgc3RhdGljIHZvaWQg
Y3NzX3Rhc2tfaXRlcl9hZHZhbmNlKHN0cnVjdCBjc3NfdGFza19pdGVyICppdCkKIAkJCWdvdG8g
cmVwZWF0OwogCiAJCS8qIGFuZCBkeWluZyBsZWFkZXJzIHcvbyBsaXZlIG1lbWJlciB0aHJlYWRz
ICovCi0JCWlmICghYXRvbWljX3JlYWQoJnRhc2stPnNpZ25hbC0+bGl2ZSkpCisJCWlmIChpdC0+
Y3VyX2xpc3QgPT0gQ1NTX1NFVF9UQVNLU19EWUlORyAmJgorCQkgICAgIWF0b21pY19yZWFkKCZ0
YXNrLT5zaWduYWwtPmxpdmUpKQogCQkJZ290byByZXBlYXQ7CiAJfSBlbHNlIHsKIAkJLyogc2tp
cCBhbGwgZHlpbmcgb25lcyAqLwotCQlpZiAodGFzay0+ZmxhZ3MgJiBQRl9FWElUSU5HKQorCQlp
ZiAoaXQtPmN1cl9saXN0ID09IENTU19TRVRfVEFTS1NfRFlJTkcpCiAJCQlnb3RvIHJlcGVhdDsK
IAl9CiB9Ci0tIAoyLjI0LjEKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVs
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
