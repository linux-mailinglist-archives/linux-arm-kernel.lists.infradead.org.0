Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44ACD6ADD2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 19:44:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mOqn9qW5dURYIpuCwAOURYGVRaKeERZ5pE5J72Tiws0=; b=FFlqvSWnnS409L
	b/gjRihOatD29300fPcDbqzavHD6BMRY6/YHfwwjghHIglobVgkQG4G6eOwiV5fJs5W5KlKKW1gxO
	g5BUN/6pZykX5PPAa+PRJ9EFtHVdskwpKtmZDabjgMLhrzabA5/afaBgHQM9H6UtIYVsxV83jLy8r
	UzFmPn41mEa9oxRzmlpJix1enGkxwfr1UhYYm8YHCwj4peqRrWME1th3vJfaZgVMLuTo3ejlN6/TV
	xw7ALwRcY33ewvIRdcpL+rbBqf31wBtBMa29MsipMjnYFqF9n+U93J+xYCLkvptF36oqzn2uBXc/J
	Ql6prUQB/03lZ/RsR/Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnRUp-0003pw-RD; Tue, 16 Jul 2019 17:44:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hnRUd-0003pH-5U
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 17:44:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB28D2B;
 Tue, 16 Jul 2019 10:43:57 -0700 (PDT)
Received: from big-swifty.lan (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2EE163F71A;
 Tue, 16 Jul 2019 10:43:54 -0700 (PDT)
From: Marc Zyngier <marc.zyngier@arm.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Mark Rutland <mark.rutland@arm.com>, James Morse <james.morse@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Julien Thierry <julien.thierry@arm.com>,
 Paolo Bonzini <pbonzini@redhat.com>,
 =?UTF-8?q?Radim=20Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Russell King <linux@arm.linux.org.uk>
Subject: [PATCH] MAINTAINERS: Update my email address to @kernel.org
Date: Tue, 16 Jul 2019 18:43:08 +0100
Message-Id: <20190716174308.17147-1-marc.zyngier@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_104359_256058_2D54121C 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: maz@kernel.org, kvmarm@lists.cs.columbia.edu, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SSB3aWxsIHNvb24gbG9zZSBhY2Nlc3MgdG8gbXkgQGFybS5jb20gZW1haWwgYWRkcmVzcywgc28g
bGV0J3MKdXBkYXRlIHRoZSBNQUlOVEFJTkVSUyBmaWxlIHRvIHBvaW50IHRvIG15IEBrZXJuZWwu
b3JnIGFkZHJlc3MsCmFzIHdlbGwgYXMgLm1haWxtYXAgZm9yIGdvb2QgbWVhc3VyZS4KCk5vdGUg
dGhhdCBteSBAYXJtLmNvbSBhZGRyZXNzIHdpbGwgc3RpbGwgd29yaywgYnV0IHNvbWVvbmUgZWxz
ZQp3aWxsIGJlIHJlYWRpbmcgd2hhdGV2ZXIgaXMgc2VudCB0aGVyZS4gRG9uJ3Qgc2F5IHlvdSBk
aWRuJ3Qga25vdyEKClNpZ25lZC1vZmYtYnk6IE1hcmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFy
bS5jb20+Ci0tLQoKTm90ZXM6CiAgICBZZXMsIEknbSBzZW5kaW5nIHRoaXMgZnJvbSBteSBBUk0g
YWRkcmVzcy4gVGhhdCdzIGludGVudGlvbmFsLgogICAgSSdsbCBwcm9iYWJseSBzZW5kIGl0IGFz
IHBhcnQgb2YgYSBwdWxsIHJlcXVlc3QgbGF0ZXIgaW4gdGhlCiAgICBjeWNsZSwgYnV0IHRoYXQn
cyBqdXN0IHNvIHRoYXQgcGVvcGxlIGtub3cgd2hhdCBpcyBjb21pbmcuCgogLm1haWxtYXAgICAg
fCAxICsKIE1BSU5UQUlORVJTIHwgOCArKysrLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCA1IGluc2Vy
dGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvLm1haWxtYXAgYi8ubWFpbG1h
cAppbmRleCAwZmVmOTMyZGUzZGIuLjIzY2ZlZDJlMDE1YyAxMDA2NDQKLS0tIGEvLm1haWxtYXAK
KysrIGIvLm1haWxtYXAKQEAgLTEzMiw2ICsxMzIsNyBAQCBMaW51cyBMw7xzc2luZyA8bGludXMu
bHVlc3NpbmdAYzBkMy5ibHVlPiA8bGludXMubHVlc3NpbmdAYXNjb20uY2g+CiBMaSBZYW5nIDxs
ZW95YW5nLmxpQG54cC5jb20+IDxsZW9Aemgta2VybmVsLm9yZz4KIExpIFlhbmcgPGxlb3lhbmcu
bGlAbnhwLmNvbT4gPGxlb2xpQGZyZWVzY2FsZS5jb20+CiBNYWNpZWogVy4gUm96eWNraSA8bWFj
cm9AbWlwcy5jb20+IDxtYWNyb0BpbWd0ZWMuY29tPgorTWFyYyBaeW5naWVyIDxtYXpAa2VybmVs
Lm9yZz4gPG1hcmMuenluZ2llckBhcm0uY29tPgogTWFyY2luIE5vd2Frb3dza2kgPG1hcmNpbi5u
b3dha293c2tpQG1pcHMuY29tPiA8bWFyY2luLm5vd2Frb3dza2lAaW1ndGVjLmNvbT4KIE1hcmsg
QnJvd24gPGJyb29uaWVAc2lyZW5hLm9yZy51az4KIE1hcmsgWWFvIDxtYXJreWFvMDU5MUBnbWFp
bC5jb20+IDxtYXJrLnlhb0Byb2NrLWNoaXBzLmNvbT4KZGlmZiAtLWdpdCBhL01BSU5UQUlORVJT
IGIvTUFJTlRBSU5FUlMKaW5kZXggNjc3ZWY0MWNiMDEyLi5lZmYzZGNhNDg2OWQgMTAwNjQ0Ci0t
LSBhL01BSU5UQUlORVJTCisrKyBiL01BSU5UQUlORVJTCkBAIC0xMTYxLDcgKzExNjEsNyBAQCBG
OglpbmNsdWRlL3VhcGkvbGludXgvaWZfYXJjbmV0LmgKIAogQVJNIEFSQ0hJVEVDVEVEIFRJTUVS
IERSSVZFUgogTToJTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT4KLU06CU1hcmMg
WnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+CitNOglNYXJjIFp5bmdpZXIgPG1hekBrZXJu
ZWwub3JnPgogTDoJbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnIChtb2RlcmF0
ZWQgZm9yIG5vbi1zdWJzY3JpYmVycykKIFM6CU1haW50YWluZWQKIEY6CWFyY2gvYXJtL2luY2x1
ZGUvYXNtL2FyY2hfdGltZXIuaApAQCAtODMwMyw3ICs4MzAzLDcgQEAgUzoJT2Jzb2xldGUKIEY6
CWluY2x1ZGUvdWFwaS9saW51eC9pcHguaAogCiBJUlEgRE9NQUlOUyAoSVJRIE5VTUJFUiBNQVBQ
SU5HIExJQlJBUlkpCi1NOglNYXJjIFp5bmdpZXIgPG1hcmMuenluZ2llckBhcm0uY29tPgorTToJ
TWFyYyBaeW5naWVyIDxtYXpAa2VybmVsLm9yZz4KIFM6CU1haW50YWluZWQKIFQ6CWdpdCBnaXQ6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdGlwL3RpcC5naXQgaXJx
L2NvcmUKIEY6CURvY3VtZW50YXRpb24vSVJRLWRvbWFpbi50eHQKQEAgLTgzMjEsNyArODMyMSw3
IEBAIEY6CWtlcm5lbC9pcnEvCiBJUlFDSElQIERSSVZFUlMKIE06CVRob21hcyBHbGVpeG5lciA8
dGdseEBsaW51dHJvbml4LmRlPgogTToJSmFzb24gQ29vcGVyIDxqYXNvbkBsYWtlZGFlbW9uLm5l
dD4KLU06CU1hcmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+CitNOglNYXJjIFp5bmdp
ZXIgPG1hekBrZXJuZWwub3JnPgogTDoJbGludXgta2VybmVsQHZnZXIua2VybmVsLm9yZwogUzoJ
TWFpbnRhaW5lZAogVDoJZ2l0IGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2Vy
bmVsL2dpdC90aXAvdGlwLmdpdCBpcnEvY29yZQpAQCAtODYzMyw3ICs4NjMzLDcgQEAgRjoJYXJj
aC94ODYvaW5jbHVkZS9hc20vc3ZtLmgKIEY6CWFyY2gveDg2L2t2bS9zdm0uYwogCiBLRVJORUwg
VklSVFVBTCBNQUNISU5FIEZPUiBBUk0vQVJNNjQgKEtWTS9hcm0sIEtWTS9hcm02NCkKLU06CU1h
cmMgWnluZ2llciA8bWFyYy56eW5naWVyQGFybS5jb20+CitNOglNYXJjIFp5bmdpZXIgPG1hekBr
ZXJuZWwub3JnPgogUjoJSmFtZXMgTW9yc2UgPGphbWVzLm1vcnNlQGFybS5jb20+CiBSOglKdWxp
ZW4gVGhpZXJyeSA8anVsaWVuLnRoaWVycnlAYXJtLmNvbT4KIFI6CVN1enVraSBLIFBvdWxvemUg
PHN1enVraS5wb3Vsb3NlQGFybS5jb20+Ci0tIAoyLjIwLjEKCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlz
dApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
