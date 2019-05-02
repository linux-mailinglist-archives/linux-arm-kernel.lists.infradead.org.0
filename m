Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC62A11D42
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 17:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ViSH6afNjFv1Ms/FEpleOiyH1Sm4ZFpCy6TCBq24iSM=; b=dialKfVAUKIYyf
	H5pQG+KOdx96PGKQvGHBorhF6bfm/HTxwLflFG1yLQQy0OvVWzQ6z+W6Laq7qsPJyM2u6L1yvyLr9
	3nyxi0PLd5Sd/rCktLNUpv1MuNx1a3K3R1Xf3gukDfzEbcfReYmRTuaIxPDx/CKtg23GnCW4/yOXS
	p/OkXzC+bqKkfZRivXca6Ha1UAWQFHiFUA6mDNhgv1Sh5xPMsdRmOoV/6kTr8gqr+kr0IEm7anMUM
	nNisFZ0I0kOu16moyioV8Wfl2030VW9N1Lc7tLNErbM3SLTK/voV1/qLL/aS3oSNFTgP4akqgM6/r
	c5NBUfA1b3G2um2rRiqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMDhT-0006VQ-Ek; Thu, 02 May 2019 15:32:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMDhI-0006UV-Nr
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 15:32:38 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C812520675;
 Thu,  2 May 2019 15:32:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556811152;
 bh=aFnUXFlRaYzH6NCPbxdKrZuk1ZJSOgHvyS+LtCDVygc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XexrajBfztBxSi5wvfePgWpoQy01q7PUiC4OrMfA+PPVXJnhiSUq5i98D1EzgSnQx
 +3kNbhR5c8AB9M1/u/Md1fWvIBC6/49QeIEK7SArDonzA+RelJ4tSSJ6j1mZrDjSfl
 lRbtUSkRsXOsMZc2QjskuLI9CE16X80u0XXK51aE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.0 094/101] perf cs-etm: Add missing case value
Date: Thu,  2 May 2019 17:21:36 +0200
Message-Id: <20190502143346.174914362@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190502143339.434882399@linuxfoundation.org>
References: <20190502143339.434882399@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_083236_673381_E375DB6A 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "Sasha Levin \(Microsoft\)" <sashal@kernel.org>,
 Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulouse <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 Solomon Tan <solomonbobstoner@gmail.com>,
 Peter Zijlstra <peterz@infradead.org>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

WyBVcHN0cmVhbSBjb21taXQgYzhmYTdhODA3ZjNjNWY5NDZiZDkyMDc2ZmJhZjc4MjZlZGI2NTBk
YyBdCgpUaGUgZm9sbG93aW5nIGVycm9yIHdhcyB0aHJvd24gd2hlbiBjb21waWxpbmcgYHRvb2xz
L3BlcmZgIHVzaW5nIE9wZW5DU0QKdjAuMTEuMS4gVGhpcyBwYXRjaCBmaXhlcyBzYWlkIGVycm9y
LgoKICAgIENDICAgICAgIHV0aWwvaW50ZWwtcHQtZGVjb2Rlci9pbnRlbC1wdC1sb2cubwogICAg
Q0MgICAgICAgdXRpbC9jcy1ldG0tZGVjb2Rlci9jcy1ldG0tZGVjb2Rlci5vCiAgdXRpbC9jcy1l
dG0tZGVjb2Rlci9jcy1ldG0tZGVjb2Rlci5jOiBJbiBmdW5jdGlvbgogIOKAmGNzX2V0bV9kZWNv
ZGVyX19idWZmZXJfcmFuZ2XigJk6CiAgdXRpbC9jcy1ldG0tZGVjb2Rlci9jcy1ldG0tZGVjb2Rl
ci5jOjM3MDoyOiBlcnJvcjogZW51bWVyYXRpb24gdmFsdWUKICDigJhPQ1NEX0lOU1RSX1dGSV9X
RkXigJkgbm90IGhhbmRsZWQgaW4gc3dpdGNoIFstV2Vycm9yPXN3aXRjaC1lbnVtXQogICAgc3dp
dGNoIChlbGVtLT5sYXN0X2lfdHlwZSkgewogICAgXn5+fn5+CiAgICBDQyAgICAgICB1dGlsL2lu
dGVsLXB0LWRlY29kZXIvaW50ZWwtcHQtZGVjb2Rlci5vCiAgY2MxOiBhbGwgd2FybmluZ3MgYmVp
bmcgdHJlYXRlZCBhcyBlcnJvcnMKCkJlY2F1c2UgYE9DU0RfSU5TVFJfV0ZJX1dGRWAgY2FzZSB3
YXMgYWRkZWQgb25seSBpbiB2MC4xMS4wLCB0aGUgbWluaW11bQpyZXF1aXJlZCBPcGVuQ1NEIGxp
YnJhcnkgdmVyc2lvbiBmb3IgdGhpcyBwYXRjaCBpcyBubyBsb25nZXIgdjAuMTAuMC4KClNpZ25l
ZC1vZmYtYnk6IFNvbG9tb24gVGFuIDxzb2xvbW9uYm9ic3RvbmVyQGdtYWlsLmNvbT4KQ2M6IEFs
ZXhhbmRlciBTaGlzaGtpbiA8YWxleGFuZGVyLnNoaXNoa2luQGxpbnV4LmludGVsLmNvbT4KQ2M6
IEppcmkgT2xzYSA8am9sc2FAcmVkaGF0LmNvbT4KQ2M6IE1hdGhpZXUgUG9pcmllciA8bWF0aGll
dS5wb2lyaWVyQGxpbmFyby5vcmc+CkNjOiBOYW1oeXVuZyBLaW0gPG5hbWh5dW5nQGtlcm5lbC5v
cmc+CkNjOiBQZXRlciBaaWpsc3RyYSA8cGV0ZXJ6QGluZnJhZGVhZC5vcmc+CkNjOiBSb2JlcnQg
V2Fsa2VyIDxyb2JlcnQud2Fsa2VyQGFybS5jb20+CkNjOiBTdXp1a2kgSyBQb3Vsb3VzZSA8c3V6
dWtpLnBvdWxvc2VAYXJtLmNvbT4KQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpMaW5rOiBodHRwOi8vbGttbC5rZXJuZWwub3JnL3IvMjAxOTAzMjIwNTIyNTUuR0E0ODA5
QHctT3B0aVBsZXgtNzA1MApTaWduZWQtb2ZmLWJ5OiBBcm5hbGRvIENhcnZhbGhvIGRlIE1lbG8g
PGFjbWVAcmVkaGF0LmNvbT4KU2lnbmVkLW9mZi1ieTogU2FzaGEgTGV2aW4gKE1pY3Jvc29mdCkg
PHNhc2hhbEBrZXJuZWwub3JnPgotLS0KIHRvb2xzL2J1aWxkL2ZlYXR1cmUvdGVzdC1saWJvcGVu
Y3NkLmMgICAgICAgICAgIHwgNCArKy0tCiB0b29scy9wZXJmL3V0aWwvY3MtZXRtLWRlY29kZXIv
Y3MtZXRtLWRlY29kZXIuYyB8IDEgKwogMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyks
IDIgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdG9vbHMvYnVpbGQvZmVhdHVyZS90ZXN0LWxp
Ym9wZW5jc2QuYyBiL3Rvb2xzL2J1aWxkL2ZlYXR1cmUvdGVzdC1saWJvcGVuY3NkLmMKaW5kZXgg
ZDY4ZWI0ZmI0MGNjLi4yYjBlMDJjMzg4NzAgMTAwNjQ0Ci0tLSBhL3Rvb2xzL2J1aWxkL2ZlYXR1
cmUvdGVzdC1saWJvcGVuY3NkLmMKKysrIGIvdG9vbHMvYnVpbGQvZmVhdHVyZS90ZXN0LWxpYm9w
ZW5jc2QuYwpAQCAtNCw5ICs0LDkgQEAKIC8qCiAgKiBDaGVjayBPcGVuQ1NEIGxpYnJhcnkgdmVy
c2lvbiBpcyBzdWZmaWNpZW50IHRvIHByb3ZpZGUgcmVxdWlyZWQgZmVhdHVyZXMKICAqLwotI2Rl
ZmluZSBPQ1NEX01JTl9WRVIgKCgwIDw8IDE2KSB8ICgxMCA8PCA4KSB8ICgwKSkKKyNkZWZpbmUg
T0NTRF9NSU5fVkVSICgoMCA8PCAxNikgfCAoMTEgPDwgOCkgfCAoMCkpCiAjaWYgIWRlZmluZWQo
T0NTRF9WRVJfTlVNKSB8fCAoT0NTRF9WRVJfTlVNIDwgT0NTRF9NSU5fVkVSKQotI2Vycm9yICJP
cGVuQ1NEID49IDAuMTAuMCBpcyByZXF1aXJlZCIKKyNlcnJvciAiT3BlbkNTRCA+PSAwLjExLjAg
aXMgcmVxdWlyZWQiCiAjZW5kaWYKIAogaW50IG1haW4odm9pZCkKZGlmZiAtLWdpdCBhL3Rvb2xz
L3BlcmYvdXRpbC9jcy1ldG0tZGVjb2Rlci9jcy1ldG0tZGVjb2Rlci5jIGIvdG9vbHMvcGVyZi91
dGlsL2NzLWV0bS1kZWNvZGVyL2NzLWV0bS1kZWNvZGVyLmMKaW5kZXggOGMxNTU1NzVjNmM1Li4y
YThiZjZiNDVhMzAgMTAwNjQ0Ci0tLSBhL3Rvb2xzL3BlcmYvdXRpbC9jcy1ldG0tZGVjb2Rlci9j
cy1ldG0tZGVjb2Rlci5jCisrKyBiL3Rvb2xzL3BlcmYvdXRpbC9jcy1ldG0tZGVjb2Rlci9jcy1l
dG0tZGVjb2Rlci5jCkBAIC0zNzQsNiArMzc0LDcgQEAgY3NfZXRtX2RlY29kZXJfX2J1ZmZlcl9y
YW5nZShzdHJ1Y3QgY3NfZXRtX2RlY29kZXIgKmRlY29kZXIsCiAJCWJyZWFrOwogCWNhc2UgT0NT
RF9JTlNUUl9JU0I6CiAJY2FzZSBPQ1NEX0lOU1RSX0RTQl9ETUI6CisJY2FzZSBPQ1NEX0lOU1RS
X1dGSV9XRkU6CiAJY2FzZSBPQ1NEX0lOU1RSX09USEVSOgogCWRlZmF1bHQ6CiAJCXBhY2tldC0+
bGFzdF9pbnN0cl90YWtlbl9icmFuY2ggPSBmYWxzZTsKLS0gCjIuMTkuMQoKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBt
YWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
