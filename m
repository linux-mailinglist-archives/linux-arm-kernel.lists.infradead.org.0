Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EDE11D8B03
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 00:35:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/mSoV1yWNBRLMV5dxsj8Md2TZHzgGbFok3jyBlzm/gU=; b=S0zqKky7CMm+VX
	zCTMFE/2a/ZFITxBEjgT+WEcX9zyxYESyDhJam3RloQDtVx8CclxD822ZndSXSr+dxydM9Iy/G0g4
	o4j0TkgYlXdzrxF9iB1jvvCPGC+B+KYqtVC8pAuBCJK+UJSLLiSa7e2+TH93MbkbQNZ+dZoS6bbe4
	OUUn4Y90Ie4rDpeX1FtLguinU+/cbB2hHOra3kzLu/KClM6MHBCkxUcX4k+G6nZ7jovKYc2D38egk
	WkYScF53IwrPIpA2vCVBVnVQpBJVfFgrbBQYfqmL1hEN37GMqEw8e8bK4zKG4zC2bfzYuWgO0+YR7
	QkfWH6w9UsCsDRZ8jrpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaoLy-0007n2-Go; Mon, 18 May 2020 22:35:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaoLo-0007mN-JK
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 22:35:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B32B20756;
 Mon, 18 May 2020 22:35:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589841312;
 bh=bim+Wqlbpg3ow1ruxMttpLSJEZx5ODlUGcT0+LbS9x0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pW9TdC2c/QFLC760zBJw3wq1A6pU7sv35XuqiL3ktsDSb7AnHVhrD1n1NHujzr+6i
 1u+b5j7oBdWo0V5B4DA0cLNUUCBe6PeZ2ZXRTJRreG7KDyN1Ykcipc8Z5LRegzeBsj
 gCmzd+K/dcftxZhEl/xiq7BXIQGYUBjS+EYGZFrk=
Date: Mon, 18 May 2020 23:35:07 +0100
From: Will Deacon <will@kernel.org>
To: Anshuman Khandual <anshuman.khandual@arm.com>
Subject: Re: [PATCH V2] arm64/cpuinfo: Move HWCAP name arrays alongside their
 bit definitions
Message-ID: <20200518223506.GA5866@willie-the-truck>
References: <1588858150-26823-1-git-send-email-anshuman.khandual@arm.com>
 <20200513150405.GS21779@arm.com>
 <0999fa28-3ee7-3f02-4def-a0c6013ec6dd@arm.com>
 <20200514073613.GB4280@willie-the-truck>
 <8ddd0ca5-07c9-3a99-2ec6-4a201725ebe8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ddd0ca5-07c9-3a99-2ec6-4a201725ebe8@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_153512_657268_779A11FB 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Ard Biesheuvel <ardb@kernel.org>, Mark Brown <broonie@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBNYXkgMTUsIDIwMjAgYXQgMDg6NTg6MDVBTSArMDUzMCwgQW5zaHVtYW4gS2hhbmR1
YWwgd3JvdGU6Cj4gT24gMDUvMTQvMjAyMCAwMTowNiBQTSwgV2lsbCBEZWFjb24gd3JvdGU6Cj4g
PiBXaHkgaXMgaXQgYSBjaGFuZ2U/IFdlJ3ZlIG5ldmVyIHJlcG9ydGVkIGUuZy4gImphdmEiIG9u
IGFuIGFybTY0IGtlcm5lbCwgc28KPiAKPiBXZSBhbHJlYWR5IGhhdmUgImphdmEiIGRlZmluZWQg
aW4gZXhpc3RpbmcgY29tcGF0X2h3Y2FwX3N0cltdIGFycmF5IGV2ZW4KPiB0aG91Z2ggaXQgbWln
aHQgbmV2ZXIgZ2V0IHNldCBpbiBjb21wYXRfZWxmX2h3Y2FwLiBBRkFJQ1MsIGNvbXBhdF9lbGZf
aHdjYXAKPiB3aWxsIGhhdmUgdGhlIGZvbGxvd2luZyBjYXBhYmlsaXRpZXMgc2V0IChhdCB0aGUg
bW9zdCkuCj4gCj4gVmlhIENPTVBBVF9FTEZfSFdDQVBfREVGQVVMVAo+IAo+IDAxLiAgQ09NUEFU
X0hXQ0FQX0hBTEYKPiAwMi4gIENPTVBBVF9IV0NBUF9USFVNQgo+IDAzLiAgQ09NUEFUX0hXQ0FQ
X0ZBU1RfTVVMVAo+IDA0LiAgQ09NUEFUX0hXQ0FQX0VEU1AKPiAwNS4gIENPTVBBVF9IV0NBUF9U
TFMKPiAwNi4gIENPTVBBVF9IV0NBUF9JRElWCj4gMDcuICBDT01QQVRfSFdDQVBfTFBBRQo+IAo+
IFZpYSBzZXR1cF9lbGZfaHdjYXBzKGNvbXBhdF9lbGZfaHdjYXBzKSA8LS0gc2V0dXBfY3B1X2Zl
YXR1cmVzKCkKPiAKPiA4LiAgQ09NUEFUX0hXQ0FQX05FT04KPiA5LiAgQ09NUEFUX0hXQ0FQX1ZG
UHY0Cj4gMTAuIENPTVBBVF9IV0NBUF9WRlAKPiAxMS4gQ09NUEFUX0hXQ0FQX1ZGUHYzCj4gCj4g
VmlhIGFyY2hfdGltZXJfc2V0X2V2dHN0cm1fZmVhdHVyZSgpCj4gCj4gMTIuIENPTVBBVF9IV0NB
UF9FVlRTVFJNCj4gCj4gVGhlIGNvZGUgZXhpc3RzIGZvciAiamF2YSIgc3RyaW5nIHRvIGJlIGRp
c3BsYXllZCB3aXRoIC9wcm9jL2NwdWluZm8gYnV0IGl0Cj4gbWF5IG5ldmVyIGdldCB0cmlnZ2Vy
ZWQgYXMgY29tcGF0X2VsZl9od2NhcCB3aWxsIG5ldmVyIGhhdmUgSkFWQSBjYXBhYmlsaXR5Cj4g
dW5sZXNzIHRoZXJlIGlzIGEgYnVnIGFzIHlvdSBoYWQgcmlnaHRseSBtZW50aW9uZWQuCgpGYWly
IGVub3VnaCwgYnV0IGFwcGx5aW5nIHRoaXMgcGF0Y2ggY2F1c2VzIGEgKnRvbm5lKiBvZiB3YXJu
aW5ncyBmcm9tCmFpYWlhaToKCitJbiBmaWxlIGluY2x1ZGVkIGZyb20gYXJjaC9hcm02NC9pbmNs
dWRlL2FzbS9jcHVmZWF0dXJlLmg6MTEsCisgICAgICAgICAgICAgICAgIGZyb20gYXJjaC9hcm02
NC9pbmNsdWRlL2FzbS9wdHJhY2UuaDoxMSwKKyAgICAgICAgICAgICAgICAgZnJvbSBhcmNoL2Fy
bTY0L2luY2x1ZGUvYXNtL2lycWZsYWdzLmg6MTAsCisgICAgICAgICAgICAgICAgIGZyb20gaW5j
bHVkZS9saW51eC9pcnFmbGFncy5oOjE2LAorICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUv
bGludXgvc3BpbmxvY2suaDo1NCwKKyAgICAgICAgICAgICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4
L3NlcWxvY2suaDozNiwKKyAgICAgICAgICAgICAgICAgZnJvbSBpbmNsdWRlL2xpbnV4L3RpbWUu
aDo2LAorICAgICAgICAgICAgICAgICBmcm9tIGFyY2gvYXJtNjQvaW5jbHVkZS9hc20vc3RhdC5o
OjEyLAorICAgICAgICAgICAgICAgICBmcm9tIGluY2x1ZGUvbGludXgvc3RhdC5oOjYsCisgICAg
ICAgICAgICAgICAgIGZyb20gaW5jbHVkZS9saW51eC9tb2R1bGUuaDoxMywKKyAgICAgICAgICAg
ICAgICAgZnJvbSBkcml2ZXJzL21lZGlhL3JjL2tleW1hcHMvcmMtaW1vbi1tY2UubW9kLmM6MToK
K2FyY2gvYXJtNjQvaW5jbHVkZS9hc20vaHdjYXAuaDoxODk6MjY6IHdhcm5pbmc6IOKAmGNvbXBh
dF9od2NhcDJfc3Ry4oCZIGRlZmluZWQgYnV0IG5vdCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJp
YWJsZT1dCisgIDE4OSB8IHN0YXRpYyBjb25zdCBjaGFyICpjb25zdCBjb21wYXRfaHdjYXAyX3N0
cltdID0geworICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgXn5+fn5+fn5+fn5+fn5+
fn4KCnNvIEknbSBkcm9wcGluZyB0aGlzIGZvciBub3cuCgpXaWxsCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
