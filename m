Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 850031627C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 15:10:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9II1V9ip6DCD4JNTjZsPoCsPBYg8shY9P6eldtzZf0g=; b=rzDVF/a5ZR4I5y
	PsN2mDNNa2tiX3ZNdhHt3vK18qzE456q5qhuSvtW09EsiaIZhZSLE5pzQ9v2eHJ9BSCOFwdQ65pCw
	mi2bkRTG3Dxc1ote+zaFyR9xpFvJbY7XSbyXjaO6Hk/lLje/ZW+bCNLh9GYcpk/3oeet29d7OKgSx
	QEr/M88yJ++yFiBC83fAWwsDLp2VYLSCS+YaDAd34eRQcipcUnjV1CPIimQh2dtrH1LmF1aYVkz2s
	jAloCneRx56nlHOu/xNwEg8lmBZ15QgWIwC11N7fzH2cmcpH8/0mHv+173kdEsu0ngzxjbFk0MkDP
	p8NJIEJuhMb82dqxLh1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43aL-0006j7-B3; Tue, 18 Feb 2020 14:10:49 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43aB-0006hy-QB
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 14:10:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id z7so24076272wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 06:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QNcYutcXJYBdrUvt9S14FFrvpElG22ZCpcaNPeORXls=;
 b=uMVBHL3SiWvyvRfD88IieARqnTOcZ0l3w8N0dWuGjysrtTICB8N1vx4nzY19rkWdbZ
 MdhzJSQ3FST1Ya0dnrLwgTs9/nMEc3cX3ijYTEWTgzAVVfWZmh7hLNrf9pzfGM+2SeHJ
 cqO9gz9t8JkSoamnyygSaYba2poSUQgGRYZGdNEs+yMKZrNMFDguncS5QFstWTwQiKNP
 pMxMzgw2ftH7NQXp5dfQDR5BKraMhgGefnE6L3AR4CnJ4ZyThjH7ThZz8Pb/SWO5cmx6
 JkP42Us5pG5GFdMQdqifGOH2LujcGRRvBHAZGm8JBUq0bnkp0W5AvaE/ya5DnOvbWgCz
 DbPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=QNcYutcXJYBdrUvt9S14FFrvpElG22ZCpcaNPeORXls=;
 b=mF3nMZhz7/AyDrK0IL8grZJrNLaxnATTXrIZIBhS3tCzi7NzkhiCL4qMRcTAHLl1Pq
 18OpfHN5KgZI9qrDjAJQeACxPISjlvpaHte97GhFGyskrpj1Z8kCHImfHTe1p80aJPg2
 vUapzuseQUCHtuvYlGc/ECt2caRZO9wtsiNqpZ9jyYhDcvxMKDNmG7kTfTSUSLTtbBB0
 3/xysWdQJlmfzj+/48uq/MU5nQ43GO7X9hOXuBQtTRehOJofDG+VuCCPKAV7+BLUm5Do
 Xe13x6rFdtPoCw16Q5nsGhdK6QnZXQPq1e4LERKSg2RIKb65yx/cSxqgEEpMnsfCmAAq
 3AeA==
X-Gm-Message-State: APjAAAVl/JwZscfFq+26jjmL5MgTPiKMJFx4Tujp7qFT98Xpw+a25rNS
 BS3MuTIRXd4kc/yLWgzIpo5HAg==
X-Google-Smtp-Source: APXvYqyeuon7ZWz62tFJjiV/PDB7Y+KiG6I9b5ztmxUBv6mOPLO6c4Ld++ffdgFpmLXX6nx9VOtFIA==
X-Received: by 2002:a5d:6151:: with SMTP id y17mr28816721wrt.110.1582035037291; 
 Tue, 18 Feb 2020 06:10:37 -0800 (PST)
Received: from apalos.home ([2a02:587:4655:3a80:2e56:dcff:fe9a:8f06])
 by smtp.gmail.com with ESMTPSA id d13sm6733669wrc.64.2020.02.18.06.10.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 06:10:36 -0800 (PST)
From: Ilias Apalodimas <ilias.apalodimas@linaro.org>
To: netdev@vger.kernel.org
Subject: [PATCH net-next v4] net: page_pool: API cleanup and comments
Date: Tue, 18 Feb 2020 16:10:31 +0200
Message-Id: <20200218141031.377860-1-ilias.apalodimas@linaro.org>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_061039_857590_812785C9 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>, toke@redhat.com,
 Alexandre Torgue <alexandre.torgue@st.com>, Jakub Kicinski <kuba@kernel.org>,
 linux-stm32@st-md-mailman.stormreply.com,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 bpf@vger.kernel.org, Jose Abreu <joabreu@synopsys.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, jonathan.lemon@gmail.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Daniel Borkmann <daniel@iogearbox.net>, lorenzo@kernel.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 Jesper Dangaard Brouer <hawk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RnVuY3Rpb25zIHN0YXJ0aW5nIHdpdGggX18gdXN1YWxseSBpbmRpY2F0ZSB0aG9zZSB3aGljaCBh
cmUgZXhwb3J0ZWQsCmJ1dCBzaG91bGQgbm90IGJlIGNhbGxlZCBkaXJlY3RseS4gVXBkYXRlIHNv
bWUgb2YgdGhvc2UgZGVjbGFyZWQgaW4gdGhlCkFQSSBhbmQgbWFrZSBpdCBtb3JlIHJlYWRhYmxl
LgoKcGFnZV9wb29sX3VubWFwX3BhZ2UoKSBhbmQgcGFnZV9wb29sX3JlbGVhc2VfcGFnZSgpIHdl
cmUgZG9pbmcKZXhhY3RseSB0aGUgc2FtZSB0aGluZyBjYWxsaW5nIF9fcGFnZV9wb29sX2NsZWFu
X3BhZ2UoKS4gIExldCdzCnJlbmFtZSBfX3BhZ2VfcG9vbF9jbGVhbl9wYWdlKCkgdG8gcGFnZV9w
b29sX3JlbGVhc2VfcGFnZSgpIGFuZApleHBvcnQgaXQgaW4gb3JkZXIgdG8gc2hvdyB1cCBvbiBw
ZXJmIGxvZ3MgYW5kIGdldCByaWQgb2YKcGFnZV9wb29sX3VubWFwX3BhZ2UoKS4KCkZpbmFsbHkg
cmVuYW1lIF9fcGFnZV9wb29sX3B1dF9wYWdlKCkgdG8gcGFnZV9wb29sX3B1dF9wYWdlKCkgc2lu
Y2Ugd2UKY2FuIG5vdyBkaXJlY3RseSBjYWxsIGl0IGZyb20gZHJpdmVycyBhbmQgcmVuYW1lIHRo
ZSBleGlzdGluZwpwYWdlX3Bvb2xfcHV0X3BhZ2UoKSB0byBwYWdlX3Bvb2xfcHV0X2Z1bGxfcGFn
ZSgpIHNpbmNlIHRoZXkgZG8gdGhlIHNhbWUKdGhpbmcgYnV0IHRoZSBsYXR0ZXIgaXMgdHJ5aW5n
IHRvIHN5bmMgdGhlIGZ1bGwgRE1BIGFyZWEuCgpUaGlzIHBhdGNoIGFsc28gdXBkYXRlcyBuZXRz
ZWMsIG12bmV0YSBhbmQgc3RtbWFjIGRyaXZlcnMgd2hpY2ggdXNlCnRob3NlIGZ1bmN0aW9ucy4K
CkFja2VkLWJ5OiBUb2tlIEjDuGlsYW5kLUrDuHJnZW5zZW4gPHRva2VAcmVkaGF0LmNvbT4KU2ln
bmVkLW9mZi1ieTogSWxpYXMgQXBhbG9kaW1hcyA8aWxpYXMuYXBhbG9kaW1hc0BsaW5hcm8ub3Jn
PgotLS0KQ2hhbmdlcyBzaW5jZQp2MToKLSBGaXhlZCBuZXRzZWMgZHJpdmVyIGNvbXBpbGF0aW9u
IGVycm9yCnYyOgotIEltcHJvdmVkIGNvbW1lbnQgZGVzY3JpcHRpb24gb2YgcGFnZV9wb29sX3B1
dF9wYWdlKCkKdjM6Ci0gUHJvcGVybHkgZGVmaW5lIHBhZ2VfcG9vbF9yZWxlYXNlX3BhZ2UoKSBp
biB0aGUgaGVhZGVyIGZpbGUKICB3aXRoaW4gYW4gaWZkZWYgc2luY2UgeGRwLmMgdXNlcyBpdCBl
dmVuIGlmIENPTkZJR19QQUdFX1BPT0wgaXMgbm90IHNlbGVjdGVkCi0gcmVuYW1lIF9fcGFnZV9w
b29sX2NsZWFuX3BhZ2UgLT4gcGFnZV9wb29sX3JlbGVhc2VfcGFnZSBhbmQgZ2V0IHJpZCBvZgph
bm90aGVyIHJlZHVuZGFudCBoZWxwZXIKCiBkcml2ZXJzL25ldC9ldGhlcm5ldC9tYXJ2ZWxsL212
bmV0YS5jICAgICAgICAgfCAxOSArKystLQogZHJpdmVycy9uZXQvZXRoZXJuZXQvc29jaW9uZXh0
L25ldHNlYy5jICAgICAgIHwgMjMgKysrLS0tCiAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8vc3Rt
bWFjL3N0bW1hY19tYWluLmMgfCAgNCArLQogaW5jbHVkZS9uZXQvcGFnZV9wb29sLmggICAgICAg
ICAgICAgICAgICAgICAgIHwgMzYgKysrKy0tLS0tLQogbmV0L2NvcmUvcGFnZV9wb29sLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwgNzAgKysrKysrKysrKy0tLS0tLS0tLQogbmV0L2NvcmUv
eGRwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDIgKy0KIDYgZmlsZXMgY2hh
bmdlZCwgNzQgaW5zZXJ0aW9ucygrKSwgODAgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJp
dmVycy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdm5ldGEuYyBiL2RyaXZlcnMvbmV0L2V0aGVybmV0
L21hcnZlbGwvbXZuZXRhLmMKaW5kZXggOTgwMTdlN2Q1ZGQwLi4yMmI1NjhjNjBmNjUgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L21hcnZlbGwvbXZuZXRhLmMKKysrIGIvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvbWFydmVsbC9tdm5ldGEuYwpAQCAtMTkzMyw3ICsxOTMzLDcgQEAgc3Rh
dGljIHZvaWQgbXZuZXRhX3J4cV9kcm9wX3BrdHMoc3RydWN0IG12bmV0YV9wb3J0ICpwcCwKIAkJ
aWYgKCFkYXRhIHx8ICEocnhfZGVzYy0+YnVmX3BoeXNfYWRkcikpCiAJCQljb250aW51ZTsKIAot
CQlwYWdlX3Bvb2xfcHV0X3BhZ2UocnhxLT5wYWdlX3Bvb2wsIGRhdGEsIGZhbHNlKTsKKwkJcGFn
ZV9wb29sX3B1dF9mdWxsX3BhZ2UocnhxLT5wYWdlX3Bvb2wsIGRhdGEsIGZhbHNlKTsKIAl9CiAJ
aWYgKHhkcF9yeHFfaW5mb19pc19yZWcoJnJ4cS0+eGRwX3J4cSkpCiAJCXhkcF9yeHFfaW5mb191
bnJlZygmcnhxLT54ZHBfcnhxKTsKQEAgLTIxMDgsOSArMjEwOCw5IEBAIG12bmV0YV9ydW5feGRw
KHN0cnVjdCBtdm5ldGFfcG9ydCAqcHAsIHN0cnVjdCBtdm5ldGFfcnhfcXVldWUgKnJ4cSwKIAkJ
ZXJyID0geGRwX2RvX3JlZGlyZWN0KHBwLT5kZXYsIHhkcCwgcHJvZyk7CiAJCWlmIChlcnIpIHsK
IAkJCXJldCA9IE1WTkVUQV9YRFBfRFJPUFBFRDsKLQkJCV9fcGFnZV9wb29sX3B1dF9wYWdlKHJ4
cS0+cGFnZV9wb29sLAotCQkJCQkgICAgIHZpcnRfdG9faGVhZF9wYWdlKHhkcC0+ZGF0YSksCi0J
CQkJCSAgICAgbGVuLCB0cnVlKTsKKwkJCXBhZ2VfcG9vbF9wdXRfcGFnZShyeHEtPnBhZ2VfcG9v
bCwKKwkJCQkJICAgdmlydF90b19oZWFkX3BhZ2UoeGRwLT5kYXRhKSwgbGVuLAorCQkJCQkgICB0
cnVlKTsKIAkJfSBlbHNlIHsKIAkJCXJldCA9IE1WTkVUQV9YRFBfUkVESVI7CiAJCX0KQEAgLTIx
MTksOSArMjExOSw5IEBAIG12bmV0YV9ydW5feGRwKHN0cnVjdCBtdm5ldGFfcG9ydCAqcHAsIHN0
cnVjdCBtdm5ldGFfcnhfcXVldWUgKnJ4cSwKIAljYXNlIFhEUF9UWDoKIAkJcmV0ID0gbXZuZXRh
X3hkcF94bWl0X2JhY2socHAsIHhkcCk7CiAJCWlmIChyZXQgIT0gTVZORVRBX1hEUF9UWCkKLQkJ
CV9fcGFnZV9wb29sX3B1dF9wYWdlKHJ4cS0+cGFnZV9wb29sLAotCQkJCQkgICAgIHZpcnRfdG9f
aGVhZF9wYWdlKHhkcC0+ZGF0YSksCi0JCQkJCSAgICAgbGVuLCB0cnVlKTsKKwkJCXBhZ2VfcG9v
bF9wdXRfcGFnZShyeHEtPnBhZ2VfcG9vbCwKKwkJCQkJICAgdmlydF90b19oZWFkX3BhZ2UoeGRw
LT5kYXRhKSwgbGVuLAorCQkJCQkgICB0cnVlKTsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJYnBm
X3dhcm5faW52YWxpZF94ZHBfYWN0aW9uKGFjdCk7CkBAIC0yMTMwLDkgKzIxMzAsOCBAQCBtdm5l
dGFfcnVuX3hkcChzdHJ1Y3QgbXZuZXRhX3BvcnQgKnBwLCBzdHJ1Y3QgbXZuZXRhX3J4X3F1ZXVl
ICpyeHEsCiAJCXRyYWNlX3hkcF9leGNlcHRpb24ocHAtPmRldiwgcHJvZywgYWN0KTsKIAkJLyog
ZmFsbCB0aHJvdWdoICovCiAJY2FzZSBYRFBfRFJPUDoKLQkJX19wYWdlX3Bvb2xfcHV0X3BhZ2Uo
cnhxLT5wYWdlX3Bvb2wsCi0JCQkJICAgICB2aXJ0X3RvX2hlYWRfcGFnZSh4ZHAtPmRhdGEpLAot
CQkJCSAgICAgbGVuLCB0cnVlKTsKKwkJcGFnZV9wb29sX3B1dF9wYWdlKHJ4cS0+cGFnZV9wb29s
LAorCQkJCSAgIHZpcnRfdG9faGVhZF9wYWdlKHhkcC0+ZGF0YSksIGxlbiwgdHJ1ZSk7CiAJCXJl
dCA9IE1WTkVUQV9YRFBfRFJPUFBFRDsKIAkJYnJlYWs7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9uZXQvZXRoZXJuZXQvc29jaW9uZXh0L25ldHNlYy5jIGIvZHJpdmVycy9uZXQvZXRoZXJuZXQv
c29jaW9uZXh0L25ldHNlYy5jCmluZGV4IGU4MjI0YjU0M2RmYy4uNDY0MjQ1MzNkNDc4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL25ldC9ldGhlcm5ldC9zb2Npb25leHQvbmV0c2VjLmMKKysrIGIvZHJp
dmVycy9uZXQvZXRoZXJuZXQvc29jaW9uZXh0L25ldHNlYy5jCkBAIC04OTYsOSArODk2LDkgQEAg
c3RhdGljIHUzMiBuZXRzZWNfcnVuX3hkcChzdHJ1Y3QgbmV0c2VjX3ByaXYgKnByaXYsIHN0cnVj
dCBicGZfcHJvZyAqcHJvZywKIAljYXNlIFhEUF9UWDoKIAkJcmV0ID0gbmV0c2VjX3hkcF94bWl0
X2JhY2socHJpdiwgeGRwKTsKIAkJaWYgKHJldCAhPSBORVRTRUNfWERQX1RYKQotCQkJX19wYWdl
X3Bvb2xfcHV0X3BhZ2UoZHJpbmctPnBhZ2VfcG9vbCwKLQkJCQkJICAgICB2aXJ0X3RvX2hlYWRf
cGFnZSh4ZHAtPmRhdGEpLAotCQkJCQkgICAgIGxlbiwgdHJ1ZSk7CisJCQlwYWdlX3Bvb2xfcHV0
X3BhZ2UoZHJpbmctPnBhZ2VfcG9vbCwKKwkJCQkJICAgdmlydF90b19oZWFkX3BhZ2UoeGRwLT5k
YXRhKSwgbGVuLAorCQkJCQkgICB0cnVlKTsKIAkJYnJlYWs7CiAJY2FzZSBYRFBfUkVESVJFQ1Q6
CiAJCWVyciA9IHhkcF9kb19yZWRpcmVjdChwcml2LT5uZGV2LCB4ZHAsIHByb2cpOwpAQCAtOTA2
LDkgKzkwNiw5IEBAIHN0YXRpYyB1MzIgbmV0c2VjX3J1bl94ZHAoc3RydWN0IG5ldHNlY19wcml2
ICpwcml2LCBzdHJ1Y3QgYnBmX3Byb2cgKnByb2csCiAJCQlyZXQgPSBORVRTRUNfWERQX1JFRElS
OwogCQl9IGVsc2UgewogCQkJcmV0ID0gTkVUU0VDX1hEUF9DT05TVU1FRDsKLQkJCV9fcGFnZV9w
b29sX3B1dF9wYWdlKGRyaW5nLT5wYWdlX3Bvb2wsCi0JCQkJCSAgICAgdmlydF90b19oZWFkX3Bh
Z2UoeGRwLT5kYXRhKSwKLQkJCQkJICAgICBsZW4sIHRydWUpOworCQkJcGFnZV9wb29sX3B1dF9w
YWdlKGRyaW5nLT5wYWdlX3Bvb2wsCisJCQkJCSAgIHZpcnRfdG9faGVhZF9wYWdlKHhkcC0+ZGF0
YSksIGxlbiwKKwkJCQkJICAgdHJ1ZSk7CiAJCX0KIAkJYnJlYWs7CiAJZGVmYXVsdDoKQEAgLTkx
OSw5ICs5MTksOCBAQCBzdGF0aWMgdTMyIG5ldHNlY19ydW5feGRwKHN0cnVjdCBuZXRzZWNfcHJp
diAqcHJpdiwgc3RydWN0IGJwZl9wcm9nICpwcm9nLAogCQkvKiBmYWxsIHRocm91Z2ggLS0gaGFu
ZGxlIGFib3J0cyBieSBkcm9wcGluZyBwYWNrZXQgKi8KIAljYXNlIFhEUF9EUk9QOgogCQlyZXQg
PSBORVRTRUNfWERQX0NPTlNVTUVEOwotCQlfX3BhZ2VfcG9vbF9wdXRfcGFnZShkcmluZy0+cGFn
ZV9wb29sLAotCQkJCSAgICAgdmlydF90b19oZWFkX3BhZ2UoeGRwLT5kYXRhKSwKLQkJCQkgICAg
IGxlbiwgdHJ1ZSk7CisJCXBhZ2VfcG9vbF9wdXRfcGFnZShkcmluZy0+cGFnZV9wb29sLAorCQkJ
CSAgIHZpcnRfdG9faGVhZF9wYWdlKHhkcC0+ZGF0YSksIGxlbiwgdHJ1ZSk7CiAJCWJyZWFrOwog
CX0KIApAQCAtMTAyMCw4ICsxMDE5LDggQEAgc3RhdGljIGludCBuZXRzZWNfcHJvY2Vzc19yeChz
dHJ1Y3QgbmV0c2VjX3ByaXYgKnByaXYsIGludCBidWRnZXQpCiAJCQkgKiBjYWNoZSBzdGF0ZS4g
U2luY2Ugd2UgcGFpZCB0aGUgYWxsb2NhdGlvbiBjb3N0IGlmCiAJCQkgKiBidWlsZGluZyBhbiBz
a2IgZmFpbHMgdHJ5IHRvIHB1dCB0aGUgcGFnZSBpbnRvIGNhY2hlCiAJCQkgKi8KLQkJCV9fcGFn
ZV9wb29sX3B1dF9wYWdlKGRyaW5nLT5wYWdlX3Bvb2wsIHBhZ2UsCi0JCQkJCSAgICAgcGt0X2xl
biwgdHJ1ZSk7CisJCQlwYWdlX3Bvb2xfcHV0X3BhZ2UoZHJpbmctPnBhZ2VfcG9vbCwgcGFnZSwg
cGt0X2xlbiwKKwkJCQkJICAgdHJ1ZSk7CiAJCQluZXRpZl9lcnIocHJpdiwgZHJ2LCBwcml2LT5u
ZGV2LAogCQkJCSAgInJ4IGZhaWxlZCB0byBidWlsZCBza2JcbiIpOwogCQkJYnJlYWs7CkBAIC0x
MTk5LDcgKzExOTgsNyBAQCBzdGF0aWMgdm9pZCBuZXRzZWNfdW5pbml0X3BrdF9kcmluZyhzdHJ1
Y3QgbmV0c2VjX3ByaXYgKnByaXYsIGludCBpZCkKIAkJaWYgKGlkID09IE5FVFNFQ19SSU5HX1JY
KSB7CiAJCQlzdHJ1Y3QgcGFnZSAqcGFnZSA9IHZpcnRfdG9fcGFnZShkZXNjLT5hZGRyKTsKIAot
CQkJcGFnZV9wb29sX3B1dF9wYWdlKGRyaW5nLT5wYWdlX3Bvb2wsIHBhZ2UsIGZhbHNlKTsKKwkJ
CXBhZ2VfcG9vbF9wdXRfZnVsbF9wYWdlKGRyaW5nLT5wYWdlX3Bvb2wsIHBhZ2UsIGZhbHNlKTsK
IAkJfSBlbHNlIGlmIChpZCA9PSBORVRTRUNfUklOR19UWCkgewogCQkJZG1hX3VubWFwX3Npbmds
ZShwcml2LT5kZXYsIGRlc2MtPmRtYV9hZGRyLCBkZXNjLT5sZW4sCiAJCQkJCSBETUFfVE9fREVW
SUNFKTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0
bW1hY19tYWluLmMgYi9kcml2ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNf
bWFpbi5jCmluZGV4IDU4MzZiMjFlZGQ3ZS4uMzc5MjBiNGRhMDkxIDEwMDY0NAotLS0gYS9kcml2
ZXJzL25ldC9ldGhlcm5ldC9zdG1pY3JvL3N0bW1hYy9zdG1tYWNfbWFpbi5jCisrKyBiL2RyaXZl
cnMvbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL3N0bW1hY19tYWluLmMKQEAgLTEyNTEsMTEg
KzEyNTEsMTEgQEAgc3RhdGljIHZvaWQgc3RtbWFjX2ZyZWVfcnhfYnVmZmVyKHN0cnVjdCBzdG1t
YWNfcHJpdiAqcHJpdiwgdTMyIHF1ZXVlLCBpbnQgaSkKIAlzdHJ1Y3Qgc3RtbWFjX3J4X2J1ZmZl
ciAqYnVmID0gJnJ4X3EtPmJ1Zl9wb29sW2ldOwogCiAJaWYgKGJ1Zi0+cGFnZSkKLQkJcGFnZV9w
b29sX3B1dF9wYWdlKHJ4X3EtPnBhZ2VfcG9vbCwgYnVmLT5wYWdlLCBmYWxzZSk7CisJCXBhZ2Vf
cG9vbF9wdXRfZnVsbF9wYWdlKHJ4X3EtPnBhZ2VfcG9vbCwgYnVmLT5wYWdlLCBmYWxzZSk7CiAJ
YnVmLT5wYWdlID0gTlVMTDsKIAogCWlmIChidWYtPnNlY19wYWdlKQotCQlwYWdlX3Bvb2xfcHV0
X3BhZ2UocnhfcS0+cGFnZV9wb29sLCBidWYtPnNlY19wYWdlLCBmYWxzZSk7CisJCXBhZ2VfcG9v
bF9wdXRfZnVsbF9wYWdlKHJ4X3EtPnBhZ2VfcG9vbCwgYnVmLT5zZWNfcGFnZSwgZmFsc2UpOwog
CWJ1Zi0+c2VjX3BhZ2UgPSBOVUxMOwogfQogCmRpZmYgLS1naXQgYS9pbmNsdWRlL25ldC9wYWdl
X3Bvb2wuaCBiL2luY2x1ZGUvbmV0L3BhZ2VfcG9vbC5oCmluZGV4IGNmYmVkMDBiYTdlZS4uODFk
Nzc3M2Y5NmNkIDEwMDY0NAotLS0gYS9pbmNsdWRlL25ldC9wYWdlX3Bvb2wuaAorKysgYi9pbmNs
dWRlL25ldC9wYWdlX3Bvb2wuaApAQCAtMTUxLDYgKzE1MSw3IEBAIHN0cnVjdCBwYWdlX3Bvb2wg
KnBhZ2VfcG9vbF9jcmVhdGUoY29uc3Qgc3RydWN0IHBhZ2VfcG9vbF9wYXJhbXMgKnBhcmFtcyk7
CiAjaWZkZWYgQ09ORklHX1BBR0VfUE9PTAogdm9pZCBwYWdlX3Bvb2xfZGVzdHJveShzdHJ1Y3Qg
cGFnZV9wb29sICpwb29sKTsKIHZvaWQgcGFnZV9wb29sX3VzZV94ZHBfbWVtKHN0cnVjdCBwYWdl
X3Bvb2wgKnBvb2wsIHZvaWQgKCpkaXNjb25uZWN0KSh2b2lkICopKTsKK3ZvaWQgcGFnZV9wb29s
X3JlbGVhc2VfcGFnZShzdHJ1Y3QgcGFnZV9wb29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSk7
CiAjZWxzZQogc3RhdGljIGlubGluZSB2b2lkIHBhZ2VfcG9vbF9kZXN0cm95KHN0cnVjdCBwYWdl
X3Bvb2wgKnBvb2wpCiB7CkBAIC0xNjAsNDEgKzE2MSwzMiBAQCBzdGF0aWMgaW5saW5lIHZvaWQg
cGFnZV9wb29sX3VzZV94ZHBfbWVtKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wsCiAJCQkJCSB2b2lk
ICgqZGlzY29ubmVjdCkodm9pZCAqKSkKIHsKIH0KK3N0YXRpYyBpbmxpbmUgdm9pZCBwYWdlX3Bv
b2xfcmVsZWFzZV9wYWdlKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wsCisJCQkJCSAgc3RydWN0IHBh
Z2UgKnBhZ2UpCit7Cit9CiAjZW5kaWYKIAotLyogTmV2ZXIgY2FsbCB0aGlzIGRpcmVjdGx5LCB1
c2UgaGVscGVycyBiZWxvdyAqLwotdm9pZCBfX3BhZ2VfcG9vbF9wdXRfcGFnZShzdHJ1Y3QgcGFn
ZV9wb29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSwKLQkJCSAgdW5zaWduZWQgaW50IGRtYV9z
eW5jX3NpemUsIGJvb2wgYWxsb3dfZGlyZWN0KTsKK3ZvaWQgcGFnZV9wb29sX3B1dF9wYWdlKHN0
cnVjdCBwYWdlX3Bvb2wgKnBvb2wsIHN0cnVjdCBwYWdlICpwYWdlLAorCQkJdW5zaWduZWQgaW50
IGRtYV9zeW5jX3NpemUsIGJvb2wgYWxsb3dfZGlyZWN0KTsKIAotc3RhdGljIGlubGluZSB2b2lk
IHBhZ2VfcG9vbF9wdXRfcGFnZShzdHJ1Y3QgcGFnZV9wb29sICpwb29sLAotCQkJCSAgICAgIHN0
cnVjdCBwYWdlICpwYWdlLCBib29sIGFsbG93X2RpcmVjdCkKKy8qIFNhbWUgYXMgYWJvdmUgYnV0
IHdpbGwgdHJ5IHRvIHN5bmMgdGhlIGVudGlyZSBhcmVhIHBvb2wtPm1heF9sZW4gKi8KK3N0YXRp
YyBpbmxpbmUgdm9pZCBwYWdlX3Bvb2xfcHV0X2Z1bGxfcGFnZShzdHJ1Y3QgcGFnZV9wb29sICpw
b29sLAorCQkJCQkgICBzdHJ1Y3QgcGFnZSAqcGFnZSwgYm9vbCBhbGxvd19kaXJlY3QpCiB7CiAJ
LyogV2hlbiBwYWdlX3Bvb2wgaXNuJ3QgY29tcGlsZWQtaW4sIG5ldC9jb3JlL3hkcC5jIGRvZXNu
J3QKIAkgKiBhbGxvdyByZWdpc3RlcmluZyBNRU1fVFlQRV9QQUdFX1BPT0wsIGJ1dCBzaGllbGQg
bGlua2VyLgogCSAqLwogI2lmZGVmIENPTkZJR19QQUdFX1BPT0wKLQlfX3BhZ2VfcG9vbF9wdXRf
cGFnZShwb29sLCBwYWdlLCAtMSwgYWxsb3dfZGlyZWN0KTsKKwlwYWdlX3Bvb2xfcHV0X3BhZ2Uo
cG9vbCwgcGFnZSwgLTEsIGFsbG93X2RpcmVjdCk7CiAjZW5kaWYKIH0KLS8qIFZlcnkgbGltaXRl
ZCB1c2UtY2FzZXMgYWxsb3cgcmVjeWNsZSBkaXJlY3QgKi8KKworLyogU2FtZSBhcyBhYm92ZSBi
dXQgdGhlIGNhbGxlciBtdXN0IGd1YXJhbnRlZSBzYWZlIGNvbnRleHQuIGUuZyBOQVBJICovCiBz
dGF0aWMgaW5saW5lIHZvaWQgcGFnZV9wb29sX3JlY3ljbGVfZGlyZWN0KHN0cnVjdCBwYWdlX3Bv
b2wgKnBvb2wsCiAJCQkJCSAgICBzdHJ1Y3QgcGFnZSAqcGFnZSkKIHsKLQlfX3BhZ2VfcG9vbF9w
dXRfcGFnZShwb29sLCBwYWdlLCAtMSwgdHJ1ZSk7Ci19Ci0KLS8qIERpc2Nvbm5lY3RzIGEgcGFn
ZSAoZnJvbSBhIHBhZ2VfcG9vbCkuICBBUEkgdXNlcnMgY2FuIGhhdmUgYSBuZWVkCi0gKiB0byBk
aXNjb25uZWN0IGEgcGFnZSAoZnJvbSBhIHBhZ2VfcG9vbCksIHRvIGFsbG93IGl0IHRvIGJlIHVz
ZWQgYXMKLSAqIGEgcmVndWxhciBwYWdlICh0aGF0IHdpbGwgZXZlbnR1YWxseSBiZSByZXR1cm5l
ZCB0byB0aGUgbm9ybWFsCi0gKiBwYWdlLWFsbG9jYXRvciB2aWEgcHV0X3BhZ2UpLgotICovCi12
b2lkIHBhZ2VfcG9vbF91bm1hcF9wYWdlKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wsIHN0cnVjdCBw
YWdlICpwYWdlKTsKLXN0YXRpYyBpbmxpbmUgdm9pZCBwYWdlX3Bvb2xfcmVsZWFzZV9wYWdlKHN0
cnVjdCBwYWdlX3Bvb2wgKnBvb2wsCi0JCQkJCSAgc3RydWN0IHBhZ2UgKnBhZ2UpCi17Ci0jaWZk
ZWYgQ09ORklHX1BBR0VfUE9PTAotCXBhZ2VfcG9vbF91bm1hcF9wYWdlKHBvb2wsIHBhZ2UpOwot
I2VuZGlmCisJcGFnZV9wb29sX3B1dF9mdWxsX3BhZ2UocG9vbCwgcGFnZSwgdHJ1ZSk7CiB9CiAK
IHN0YXRpYyBpbmxpbmUgZG1hX2FkZHJfdCBwYWdlX3Bvb2xfZ2V0X2RtYV9hZGRyKHN0cnVjdCBw
YWdlICpwYWdlKQpkaWZmIC0tZ2l0IGEvbmV0L2NvcmUvcGFnZV9wb29sLmMgYi9uZXQvY29yZS9w
YWdlX3Bvb2wuYwppbmRleCA5YjdjYmUzNWRmMzcuLmMzMzBmZDgyZDMzMiAxMDA2NDQKLS0tIGEv
bmV0L2NvcmUvcGFnZV9wb29sLmMKKysrIGIvbmV0L2NvcmUvcGFnZV9wb29sLmMKQEAgLTk2LDcg
Kzk2LDcgQEAgc3RydWN0IHBhZ2VfcG9vbCAqcGFnZV9wb29sX2NyZWF0ZShjb25zdCBzdHJ1Y3Qg
cGFnZV9wb29sX3BhcmFtcyAqcGFyYW1zKQogfQogRVhQT1JUX1NZTUJPTChwYWdlX3Bvb2xfY3Jl
YXRlKTsKIAotc3RhdGljIHZvaWQgX19wYWdlX3Bvb2xfcmV0dXJuX3BhZ2Uoc3RydWN0IHBhZ2Vf
cG9vbCAqcG9vbCwgc3RydWN0IHBhZ2UgKnBhZ2UpOworc3RhdGljIHZvaWQgcGFnZV9wb29sX3Jl
dHVybl9wYWdlKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wsIHN0cnVjdCBwYWdlICpwYWdlKTsKIAog
bm9pbmxpbmUKIHN0YXRpYyBzdHJ1Y3QgcGFnZSAqcGFnZV9wb29sX3JlZmlsbF9hbGxvY19jYWNo
ZShzdHJ1Y3QgcGFnZV9wb29sICpwb29sLApAQCAtMTM3LDcgKzEzNyw3IEBAIHN0YXRpYyBzdHJ1
Y3QgcGFnZSAqcGFnZV9wb29sX3JlZmlsbF9hbGxvY19jYWNoZShzdHJ1Y3QgcGFnZV9wb29sICpw
b29sLAogCQkJICogKDIpIGJyZWFrIG91dCB0byBmYWxsdGhyb3VnaCB0byBhbGxvY19wYWdlc19u
b2RlLgogCQkJICogVGhpcyBsaW1pdCBzdHJlc3Mgb24gcGFnZSBidWRkeSBhbGxvYWN0b3IuCiAJ
CQkgKi8KLQkJCV9fcGFnZV9wb29sX3JldHVybl9wYWdlKHBvb2wsIHBhZ2UpOworCQkJcGFnZV9w
b29sX3JldHVybl9wYWdlKHBvb2wsIHBhZ2UpOwogCQkJcGFnZSA9IE5VTEw7CiAJCQlicmVhazsK
IAkJfQpAQCAtMjgwLDE4ICsyODAsMjUgQEAgc3RhdGljIHMzMiBwYWdlX3Bvb2xfaW5mbGlnaHQo
c3RydWN0IHBhZ2VfcG9vbCAqcG9vbCkKIAlyZXR1cm4gaW5mbGlnaHQ7CiB9CiAKLS8qIENsZWFu
dXAgcGFnZV9wb29sIHN0YXRlIGZyb20gcGFnZSAqLwotc3RhdGljIHZvaWQgX19wYWdlX3Bvb2xf
Y2xlYW5fcGFnZShzdHJ1Y3QgcGFnZV9wb29sICpwb29sLAotCQkJCSAgIHN0cnVjdCBwYWdlICpw
YWdlKQorLyogRGlzY29ubmVjdHMgYSBwYWdlIChmcm9tIGEgcGFnZV9wb29sKS4gIEFQSSB1c2Vy
cyBjYW4gaGF2ZSBhIG5lZWQKKyAqIHRvIGRpc2Nvbm5lY3QgYSBwYWdlIChmcm9tIGEgcGFnZV9w
b29sKSwgdG8gYWxsb3cgaXQgdG8gYmUgdXNlZCBhcworICogYSByZWd1bGFyIHBhZ2UgKHRoYXQg
d2lsbCBldmVudHVhbGx5IGJlIHJldHVybmVkIHRvIHRoZSBub3JtYWwKKyAqIHBhZ2UtYWxsb2Nh
dG9yIHZpYSBwdXRfcGFnZSkuCisgKi8KK3ZvaWQgcGFnZV9wb29sX3JlbGVhc2VfcGFnZShzdHJ1
Y3QgcGFnZV9wb29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSkKIHsKIAlkbWFfYWRkcl90IGRt
YTsKIAlpbnQgY291bnQ7CiAKIAlpZiAoIShwb29sLT5wLmZsYWdzICYgUFBfRkxBR19ETUFfTUFQ
KSkKKwkJLyogQWx3YXlzIGFjY291bnQgZm9yIGluZmxpZ2h0IHBhZ2VzLCBldmVuIGlmIHdlIGRp
ZG4ndAorCQkgKiBtYXAgdGhlbQorCQkgKi8KIAkJZ290byBza2lwX2RtYV91bm1hcDsKIAogCWRt
YSA9IHBhZ2UtPmRtYV9hZGRyOwotCS8qIERNQSB1bm1hcCAqLworCisJLyogV2hlbiBwYWdlIGlz
IHVubWFwcGVkLCBpdCBjYW5ub3QgYmUgcmV0dXJuZWQgb3VyIHBvb2wgKi8KIAlkbWFfdW5tYXBf
cGFnZV9hdHRycyhwb29sLT5wLmRldiwgZG1hLAogCQkJICAgICBQQUdFX1NJWkUgPDwgcG9vbC0+
cC5vcmRlciwgcG9vbC0+cC5kbWFfZGlyLAogCQkJICAgICBETUFfQVRUUl9TS0lQX0NQVV9TWU5D
KTsKQEAgLTMwMywyMSArMzEwLDEyIEBAIHN0YXRpYyB2b2lkIF9fcGFnZV9wb29sX2NsZWFuX3Bh
Z2Uoc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCwKIAljb3VudCA9IGF0b21pY19pbmNfcmV0dXJuKCZw
b29sLT5wYWdlc19zdGF0ZV9yZWxlYXNlX2NudCk7CiAJdHJhY2VfcGFnZV9wb29sX3N0YXRlX3Jl
bGVhc2UocG9vbCwgcGFnZSwgY291bnQpOwogfQotCi0vKiB1bm1hcCB0aGUgcGFnZSBhbmQgY2xl
YW4gb3VyIHN0YXRlICovCi12b2lkIHBhZ2VfcG9vbF91bm1hcF9wYWdlKHN0cnVjdCBwYWdlX3Bv
b2wgKnBvb2wsIHN0cnVjdCBwYWdlICpwYWdlKQotewotCS8qIFdoZW4gcGFnZSBpcyB1bm1hcHBl
ZCwgdGhpcyBpbXBsaWVzIHBhZ2Ugd2lsbCBub3QgYmUKLQkgKiByZXR1cm5lZCB0byBwYWdlX3Bv
b2wuCi0JICovCi0JX19wYWdlX3Bvb2xfY2xlYW5fcGFnZShwb29sLCBwYWdlKTsKLX0KLUVYUE9S
VF9TWU1CT0wocGFnZV9wb29sX3VubWFwX3BhZ2UpOworRVhQT1JUX1NZTUJPTChwYWdlX3Bvb2xf
cmVsZWFzZV9wYWdlKTsKIAogLyogUmV0dXJuIGEgcGFnZSB0byB0aGUgcGFnZSBhbGxvY2F0b3Is
IGNsZWFuaW5nIHVwIG91ciBzdGF0ZSAqLwotc3RhdGljIHZvaWQgX19wYWdlX3Bvb2xfcmV0dXJu
X3BhZ2Uoc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCwgc3RydWN0IHBhZ2UgKnBhZ2UpCitzdGF0aWMg
dm9pZCBwYWdlX3Bvb2xfcmV0dXJuX3BhZ2Uoc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCwgc3RydWN0
IHBhZ2UgKnBhZ2UpCiB7Ci0JX19wYWdlX3Bvb2xfY2xlYW5fcGFnZShwb29sLCBwYWdlKTsKKwlw
YWdlX3Bvb2xfcmVsZWFzZV9wYWdlKHBvb2wsIHBhZ2UpOwogCiAJcHV0X3BhZ2UocGFnZSk7CiAJ
LyogQW4gb3B0aW1pemF0aW9uIHdvdWxkIGJlIHRvIGNhbGwgX19mcmVlX3BhZ2VzKHBhZ2UsIHBv
b2wtPnAub3JkZXIpCkBAIC0zMjYsOCArMzI0LDcgQEAgc3RhdGljIHZvaWQgX19wYWdlX3Bvb2xf
cmV0dXJuX3BhZ2Uoc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCwgc3RydWN0IHBhZ2UgKnBhZ2UpCiAJ
ICovCiB9CiAKLXN0YXRpYyBib29sIF9fcGFnZV9wb29sX3JlY3ljbGVfaW50b19yaW5nKHN0cnVj
dCBwYWdlX3Bvb2wgKnBvb2wsCi0JCQkJICAgc3RydWN0IHBhZ2UgKnBhZ2UpCitzdGF0aWMgYm9v
bCBwYWdlX3Bvb2xfcmVjeWNsZV9pbl9yaW5nKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wsIHN0cnVj
dCBwYWdlICpwYWdlKQogewogCWludCByZXQ7CiAJLyogQkggcHJvdGVjdGlvbiBub3QgbmVlZGVk
IGlmIGN1cnJlbnQgaXMgc2VydmluZyBzb2Z0aXJxICovCkBAIC0zNDQsNyArMzQxLDcgQEAgc3Rh
dGljIGJvb2wgX19wYWdlX3Bvb2xfcmVjeWNsZV9pbnRvX3Jpbmcoc3RydWN0IHBhZ2VfcG9vbCAq
cG9vbCwKICAqCiAgKiBDYWxsZXIgbXVzdCBwcm92aWRlIGFwcHJvcHJpYXRlIHNhZmUgY29udGV4
dC4KICAqLwotc3RhdGljIGJvb2wgX19wYWdlX3Bvb2xfcmVjeWNsZV9kaXJlY3Qoc3RydWN0IHBh
Z2UgKnBhZ2UsCitzdGF0aWMgYm9vbCBwYWdlX3Bvb2xfcmVjeWNsZV9pbl9jYWNoZShzdHJ1Y3Qg
cGFnZSAqcGFnZSwKIAkJCQkgICAgICAgc3RydWN0IHBhZ2VfcG9vbCAqcG9vbCkKIHsKIAlpZiAo
dW5saWtlbHkocG9vbC0+YWxsb2MuY291bnQgPT0gUFBfQUxMT0NfQ0FDSEVfU0laRSkpCkBAIC0z
NjMsOCArMzYwLDE0IEBAIHN0YXRpYyBib29sIHBvb2xfcGFnZV9yZXVzYWJsZShzdHJ1Y3QgcGFn
ZV9wb29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSkKIAlyZXR1cm4gIXBhZ2VfaXNfcGZtZW1h
bGxvYyhwYWdlKTsKIH0KIAotdm9pZCBfX3BhZ2VfcG9vbF9wdXRfcGFnZShzdHJ1Y3QgcGFnZV9w
b29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSwKLQkJCSAgdW5zaWduZWQgaW50IGRtYV9zeW5j
X3NpemUsIGJvb2wgYWxsb3dfZGlyZWN0KQorLyogSWYgdGhlIHBhZ2UgcmVmY250ID09IDEsIHRo
aXMgd2lsbCB0cnkgdG8gcmVjeWNsZSB0aGUgcGFnZS4KKyAqIGlmIFBQX0ZMQUdfRE1BX1NZTkNf
REVWIGlzIHNldCwgd2UnbGwgdHJ5IHRvIHN5bmMgdGhlIERNQSBhcmVhIGZvcgorICogdGhlIGNv
bmZpZ3VyZWQgc2l6ZSBtaW4oZG1hX3N5bmNfc2l6ZSwgcG9vbC0+bWF4X2xlbikuCisgKiBJZiB0
aGUgcGFnZSByZWZjbnQgIT0gMSwgdGhlbiB0aGUgcGFnZSB3aWxsIGJlIHJldHVybmVkIHRvIG1l
bW9yeQorICogc3Vic3lzdGVtLgorICovCit2b2lkIHBhZ2VfcG9vbF9wdXRfcGFnZShzdHJ1Y3Qg
cGFnZV9wb29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSwKKwkJCXVuc2lnbmVkIGludCBkbWFf
c3luY19zaXplLCBib29sIGFsbG93X2RpcmVjdCkKIHsKIAkvKiBUaGlzIGFsbG9jYXRvciBpcyBv
cHRpbWl6ZWQgZm9yIHRoZSBYRFAgbW9kZSB0aGF0IHVzZXMKIAkgKiBvbmUtZnJhbWUtcGVyLXBh
Z2UsIGJ1dCBoYXZlIGZhbGxiYWNrcyB0aGF0IGFjdCBsaWtlIHRoZQpAQCAtMzgxLDEyICszODQs
MTIgQEAgdm9pZCBfX3BhZ2VfcG9vbF9wdXRfcGFnZShzdHJ1Y3QgcGFnZV9wb29sICpwb29sLCBz
dHJ1Y3QgcGFnZSAqcGFnZSwKIAkJCQkJCSAgICAgIGRtYV9zeW5jX3NpemUpOwogCiAJCWlmIChh
bGxvd19kaXJlY3QgJiYgaW5fc2VydmluZ19zb2Z0aXJxKCkpCi0JCQlpZiAoX19wYWdlX3Bvb2xf
cmVjeWNsZV9kaXJlY3QocGFnZSwgcG9vbCkpCisJCQlpZiAocGFnZV9wb29sX3JlY3ljbGVfaW5f
Y2FjaGUocGFnZSwgcG9vbCkpCiAJCQkJcmV0dXJuOwogCi0JCWlmICghX19wYWdlX3Bvb2xfcmVj
eWNsZV9pbnRvX3JpbmcocG9vbCwgcGFnZSkpIHsKKwkJaWYgKCFwYWdlX3Bvb2xfcmVjeWNsZV9p
bl9yaW5nKHBvb2wsIHBhZ2UpKSB7CiAJCQkvKiBDYWNoZSBmdWxsLCBmYWxsYmFjayB0byBmcmVl
IHBhZ2VzICovCi0JCQlfX3BhZ2VfcG9vbF9yZXR1cm5fcGFnZShwb29sLCBwYWdlKTsKKwkJCXBh
Z2VfcG9vbF9yZXR1cm5fcGFnZShwb29sLCBwYWdlKTsKIAkJfQogCQlyZXR1cm47CiAJfQpAQCAt
NDAzLDEyICs0MDYsMTMgQEAgdm9pZCBfX3BhZ2VfcG9vbF9wdXRfcGFnZShzdHJ1Y3QgcGFnZV9w
b29sICpwb29sLCBzdHJ1Y3QgcGFnZSAqcGFnZSwKIAkgKiBkb2luZyByZWZjbnQgYmFzZWQgcmVj
eWNsZSB0cmlja3MsIG1lYW5pbmcgYW5vdGhlciBwcm9jZXNzCiAJICogd2lsbCBiZSBpbnZva2lu
ZyBwdXRfcGFnZS4KIAkgKi8KLQlfX3BhZ2VfcG9vbF9jbGVhbl9wYWdlKHBvb2wsIHBhZ2UpOwor
CS8qIERvIG5vdCByZXBsYWNlIHRoaXMgd2l0aCBwYWdlX3Bvb2xfcmV0dXJuX3BhZ2UoKSAqLwor
CXBhZ2VfcG9vbF9yZWxlYXNlX3BhZ2UocG9vbCwgcGFnZSk7CiAJcHV0X3BhZ2UocGFnZSk7CiB9
Ci1FWFBPUlRfU1lNQk9MKF9fcGFnZV9wb29sX3B1dF9wYWdlKTsKK0VYUE9SVF9TWU1CT0wocGFn
ZV9wb29sX3B1dF9wYWdlKTsKIAotc3RhdGljIHZvaWQgX19wYWdlX3Bvb2xfZW1wdHlfcmluZyhz
dHJ1Y3QgcGFnZV9wb29sICpwb29sKQorc3RhdGljIHZvaWQgcGFnZV9wb29sX2VtcHR5X3Jpbmco
c3RydWN0IHBhZ2VfcG9vbCAqcG9vbCkKIHsKIAlzdHJ1Y3QgcGFnZSAqcGFnZTsKIApAQCAtNDE5
LDcgKzQyMyw3IEBAIHN0YXRpYyB2b2lkIF9fcGFnZV9wb29sX2VtcHR5X3Jpbmcoc3RydWN0IHBh
Z2VfcG9vbCAqcG9vbCkKIAkJCXByX2NyaXQoIiVzKCkgcGFnZV9wb29sIHJlZmNudCAlZCB2aW9s
YXRpb25cbiIsCiAJCQkJX19mdW5jX18sIHBhZ2VfcmVmX2NvdW50KHBhZ2UpKTsKIAotCQlfX3Bh
Z2VfcG9vbF9yZXR1cm5fcGFnZShwb29sLCBwYWdlKTsKKwkJcGFnZV9wb29sX3JldHVybl9wYWdl
KHBvb2wsIHBhZ2UpOwogCX0KIH0KIApAQCAtNDQ5LDcgKzQ1Myw3IEBAIHN0YXRpYyB2b2lkIHBh
Z2VfcG9vbF9lbXB0eV9hbGxvY19jYWNoZV9vbmNlKHN0cnVjdCBwYWdlX3Bvb2wgKnBvb2wpCiAJ
ICovCiAJd2hpbGUgKHBvb2wtPmFsbG9jLmNvdW50KSB7CiAJCXBhZ2UgPSBwb29sLT5hbGxvYy5j
YWNoZVstLXBvb2wtPmFsbG9jLmNvdW50XTsKLQkJX19wYWdlX3Bvb2xfcmV0dXJuX3BhZ2UocG9v
bCwgcGFnZSk7CisJCXBhZ2VfcG9vbF9yZXR1cm5fcGFnZShwb29sLCBwYWdlKTsKIAl9CiB9CiAK
QEAgLTQ2MSw3ICs0NjUsNyBAQCBzdGF0aWMgdm9pZCBwYWdlX3Bvb2xfc2NydWIoc3RydWN0IHBh
Z2VfcG9vbCAqcG9vbCkKIAkvKiBObyBtb3JlIGNvbnN1bWVycyBzaG91bGQgZXhpc3QsIGJ1dCBw
cm9kdWNlcnMgY291bGQgc3RpbGwKIAkgKiBiZSBpbi1mbGlnaHQuCiAJICovCi0JX19wYWdlX3Bv
b2xfZW1wdHlfcmluZyhwb29sKTsKKwlwYWdlX3Bvb2xfZW1wdHlfcmluZyhwb29sKTsKIH0KIAog
c3RhdGljIGludCBwYWdlX3Bvb2xfcmVsZWFzZShzdHJ1Y3QgcGFnZV9wb29sICpwb29sKQpAQCAt
NTM1LDcgKzUzOSw3IEBAIHZvaWQgcGFnZV9wb29sX3VwZGF0ZV9uaWQoc3RydWN0IHBhZ2VfcG9v
bCAqcG9vbCwgaW50IG5ld19uaWQpCiAJLyogRmx1c2ggcG9vbCBhbGxvYyBjYWNoZSwgYXMgcmVm
aWxsIHdpbGwgY2hlY2sgTlVNQSBub2RlICovCiAJd2hpbGUgKHBvb2wtPmFsbG9jLmNvdW50KSB7
CiAJCXBhZ2UgPSBwb29sLT5hbGxvYy5jYWNoZVstLXBvb2wtPmFsbG9jLmNvdW50XTsKLQkJX19w
YWdlX3Bvb2xfcmV0dXJuX3BhZ2UocG9vbCwgcGFnZSk7CisJCXBhZ2VfcG9vbF9yZXR1cm5fcGFn
ZShwb29sLCBwYWdlKTsKIAl9CiB9CiBFWFBPUlRfU1lNQk9MKHBhZ2VfcG9vbF91cGRhdGVfbmlk
KTsKZGlmZiAtLWdpdCBhL25ldC9jb3JlL3hkcC5jIGIvbmV0L2NvcmUveGRwLmMKaW5kZXggODMx
MDcxNGM0N2ZkLi40YzdlYTg1NDg2YWYgMTAwNjQ0Ci0tLSBhL25ldC9jb3JlL3hkcC5jCisrKyBi
L25ldC9jb3JlL3hkcC5jCkBAIC0zNzIsNyArMzcyLDcgQEAgc3RhdGljIHZvaWQgX194ZHBfcmV0
dXJuKHZvaWQgKmRhdGEsIHN0cnVjdCB4ZHBfbWVtX2luZm8gKm1lbSwgYm9vbCBuYXBpX2RpcmVj
dCwKIAkJeGEgPSByaGFzaHRhYmxlX2xvb2t1cChtZW1faWRfaHQsICZtZW0tPmlkLCBtZW1faWRf
cmh0X3BhcmFtcyk7CiAJCXBhZ2UgPSB2aXJ0X3RvX2hlYWRfcGFnZShkYXRhKTsKIAkJbmFwaV9k
aXJlY3QgJj0gIXhkcF9yZXR1cm5fZnJhbWVfbm9fZGlyZWN0KCk7Ci0JCXBhZ2VfcG9vbF9wdXRf
cGFnZSh4YS0+cGFnZV9wb29sLCBwYWdlLCBuYXBpX2RpcmVjdCk7CisJCXBhZ2VfcG9vbF9wdXRf
ZnVsbF9wYWdlKHhhLT5wYWdlX3Bvb2wsIHBhZ2UsIG5hcGlfZGlyZWN0KTsKIAkJcmN1X3JlYWRf
dW5sb2NrKCk7CiAJCWJyZWFrOwogCWNhc2UgTUVNX1RZUEVfUEFHRV9TSEFSRUQ6Ci0tIAoyLjI1
LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
