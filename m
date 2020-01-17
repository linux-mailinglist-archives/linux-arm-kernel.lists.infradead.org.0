Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AC64140EC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 17:18:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M1D/WHmeaxy/7P2+euI9UeIxFaGjC6cPloO9xxE+zXg=; b=L2UHC7LmDf3/uz
	5WkptQX+RRIjBRbHP1R899KP8HvR98eN9kP3uYXHQf/hJrXZkYUhrD7xJkB4VdZJ9avRBjcAEeDK4
	9uLGM+B00vqe9j7K2lum/6OLfizTq4p6DkVWKkCzxtyU7Bz1BGk/M90wOkLUEmMCUZfXWibVQIIGb
	Pb7WhC4qED+KAj+/qlRORcToyBn+y3dGET6ChnZ06DmL8lJJ2jf81TZdIds163j0w0Efe4907yDmu
	l2MmfFnoeqSaLcG6Tg5MZFpdeQ2u/PrYPxlZ7KO1dXnckRucRaVbReCM0M7BcBv7yrF8fCX4hs2Ob
	eNNrMOLlgFCo4Mlia3EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isUJz-0001oL-5y; Fri, 17 Jan 2020 16:18:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isUJi-0001fi-DE
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 16:17:56 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 255142073A;
 Fri, 17 Jan 2020 16:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579277869;
 bh=BYaFtwH/FeRr3IK5wNS+BPWxOFfBBYvBNdjkgZgqqSw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lVRYiITzHoRK2nP6I2c/xE+ZYbap2NCaAWhGHfRBnScz5HI6CGi/z6tmT0TCdIh/x
 5UiVBYgrJhJunUIWaAqNY4ubNnGLY57YAs+rWM8+4Tn2kXWsHFWth9nE707CFUBTOz
 rYSQnCKPy9KBwyaHAzOzTwv/YEz0PXRPGhGqnK1M=
Date: Fri, 17 Jan 2020 16:17:44 +0000
From: Will Deacon <will@kernel.org>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v11 0/2] ARMv8.5-RNG support
Message-ID: <20200117161744.GA12507@willie-the-truck>
References: <20200117152642.4905-1-broonie@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117152642.4905-1-broonie@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_081750_486994_3C0B2043 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCBKYW4gMTcsIDIwMjAgYXQgMDM6MjY6NDBQTSArMDAwMCwgTWFyayBCcm93biB3cm90
ZToKPiBUaGlzIHNlcmllcyBpcyBiYXNlZCBvbiBSaWNoYXJkIEhlbmRlcnNvbidzIHByZXZpb3Vz
IHY3LCBpdCBhZGRyZXNzZXMKPiByZXZpZXcgY29tbWVudHMgZnJvbSB0aGF0IHZlcnNpb24gYnkg
ZHJvcHBpbmcgdGhlIGJvb3QgdGltZSBSTkcKPiBzdXBwb3J0IGFuZCBhZGRzIGEgbmV3IGNoYW5n
ZSB0aGF0IHVzZXMgdGhlIHY4LjUtUk5HIGV4dGVuc2lvbiB0bwo+IHNlZWQgS0FTTFIgd2hlbiBB
UkNIX1JBTkRPTSBpcyBlbmFibGVkLiAgVGhlIGJvb3QgdGltZSBzdXBwb3J0Cj4gd2lsbCBiZSBy
ZS1hZGRlZCBsYXRlciwgdGhlcmUgYXJlIGF3a3dhcmQgcG90ZW50aWFsIGludGVyYWN0b25zCj4g
d2l0aCBDUFUgZmVhdHVyZSBlbnVtZXJhdGlvbiB3aGljaCBuZWVkIGEgYml0IG1vcmUgdGhvdWdo
dC4KClRoYW5rcywgYnV0IHRoaXMgZmFpbHMgYW4gYWxsbW9kY29uZmlnIGJ1aWxkIGZvciBtZToK
CgphcmNoL2FybTY0L2tlcm5lbC9rYXNsci5jOiBJbiBmdW5jdGlvbiDigJhrYXNscl9lYXJseV9p
bml04oCZOgphcmNoL2FybTY0L2tlcm5lbC9rYXNsci5jOjEyNzo2OiBlcnJvcjogaW1wbGljaXQg
ZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYX19lYXJseV9jcHVfaGFzX3JuZHLigJk7IGRpZCB5
b3UgbWVhbiDigJhfX2Vhcmx5X3Bmbl90b19uaWTigJk/IFstV2Vycm9yPWltcGxpY2l0LWZ1bmN0
aW9uLWRlY2xhcmF0aW9uXQogIGlmIChfX2Vhcmx5X2NwdV9oYXNfcm5kcigpKSB7CiAgICAgIF5+
fn5+fn5+fn5+fn5+fn5+fn5+CiAgICAgIF9fZWFybHlfcGZuX3RvX25pZApjYzE6IHNvbWUgd2Fy
bmluZ3MgYmVpbmcgdHJlYXRlZCBhcyBlcnJvcnMKCgoobm8gZ2NjLCB3ZSBkaWRuJ3QgbWVhbiB0
aGF0ISkKCldpbGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
