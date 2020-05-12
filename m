Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25A101CF7D2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 16:49:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xYT1s6NhLdXEWX8dkUfVu0mWpBJFE07qKyoh/+8++Zo=; b=DsR3VS8LlLrkCf
	rKzLmrBAiIg6HLM8F/+oK3XDxwOlcKZMUgQANuduOp+SqPL3q/OsmzPO9nny0Gkg8uhTH96XrvVRY
	yEY+zDxUMvxUGNrt8dA5thq6siYvHPMmnw6pjM2k9rpvs3WQpypJ4NcgTsYTZExjbxdQjghBaY8s2
	B5fZ0R8E7GbU4mhKDedWFkmzjMSgKjhfjXOi9ASa6TcAJ/bPV96b7KU/hGVaZSwjRzlFJRe3klV+5
	SSTBso1gi3QrvuFV1skAiUViIMIULvmwNIroNx5zYYN2KGq8RcXNKZGvDWHVpz/KERgR/CETNvmsH
	3EXPelBQ31Bd50fu0sWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYWE1-0006mz-Kr; Tue, 12 May 2020 14:49:41 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYWD6-00068L-Pq
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 14:48:47 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 7C1A9ACF1;
 Tue, 12 May 2020 14:48:44 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: swarren@wwwdotorg.org,
	robh+dt@kernel.org,
	robin.murphy@arm.com
Subject: [PATCH 4/4] arm64: tegra194: add reserved-only flag in sysram node
Date: Tue, 12 May 2020 16:48:03 +0200
Message-Id: <20200512144803.24344-4-ykaukab@suse.de>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200512144803.24344-1-ykaukab@suse.de>
References: <20200512144803.24344-1-ykaukab@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_074844_997401_8199A88D 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 jonathanh@nvidia.com, talho@nvidia.com, thierry.reding@gmail.com,
 linux-tegra@vger.kernel.org, afaerber@suse.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

YnBtcCBkcml2ZXIgaGFzIHJlc2VydmVkIHJlZ2lvbnMgaW4gc3lzcmFtLiBTaW5jZSBzeXNyYW0g
aXMgb25seSB1c2VkCmJ5IHRoZSBicG1wIGRyaXZlciwgYWRkIOKAmHJlc2VydmVkLW9ubHnigJkg
ZmxhZyB0byB0aGUgc3lzcmFtIG5vZGUgc28KdGhhdCBvbmx5IHJlZ2lvbnMgdXNlZCBieSB0aGUg
YnBtcCBkcml2ZXIgYXJlIHJlbWFwcGVkLiBPdGhlciByZWdpb25zCm9mIHRoZSBzeXNyYW0gbWF5
IG5vdCBiZSBhY2Nlc3NpYmxlIHRvIHRoZSBrZXJuZWwgYW5kIGEgc3BlY3VsYXRpdmUKYWNjZXNz
IHRvIHRoZW0gY2FuIGNhdXNlIFNFcnJvci4KClNpZ25lZC1vZmYtYnk6IE1pYW4gWW91c2FmIEth
dWthYiA8eWthdWthYkBzdXNlLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbnZpZGlhL3Rl
Z3JhMTk0LmR0c2kgfCAxICsKIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQoKZGlmZiAt
LWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnZpZGlhL3RlZ3JhMTk0LmR0c2kgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL252aWRpYS90ZWdyYTE5NC5kdHNpCmluZGV4IGUxYWUwMWMyZDAzOS4uOWE1
Mjc2ZDljMmE2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL252aWRpYS90ZWdyYTE5
NC5kdHNpCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbnZpZGlhL3RlZ3JhMTk0LmR0c2kKQEAg
LTE3NDMsNiArMTc0Myw3IEBAIHN5c3JhbUA0MDAwMDAwMCB7CiAJCSNhZGRyZXNzLWNlbGxzID0g
PDE+OwogCQkjc2l6ZS1jZWxscyA9IDwxPjsKIAkJcmFuZ2VzID0gPDB4MCAweDAgMHg0MDAwMDAw
MCAweDUwMDAwPjsKKwkJcmVzZXJ2ZWQtb25seTsKIAogCQljcHVfYnBtcF90eDogc2htZW1ANGUw
MDAgewogCQkJY29tcGF0aWJsZSA9ICJudmlkaWEsdGVncmExOTQtYnBtcC1zaG1lbSI7Ci0tIAoy
LjI1LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
