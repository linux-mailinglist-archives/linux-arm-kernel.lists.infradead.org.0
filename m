Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21FD1846EE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 13:32:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57GG4g7XkAMFAVWzN9DTk5xBuIzN2eMBR26gqJF1MYg=; b=bv0q70DAPlaSMG
	x00spoP8BV4LFWHBFiHoSWG/XAt4g8kcyr9J6KfkuRhYtCvJdgGd0hFOh9Glrl1jxCheOyimtHMjO
	2y0AOErkN5zatWagLDGH3OAaYND32uC5l4vWOfWldiccn3Hz5Ytnu2N1dut1kI9AaESRGs0WuJeJS
	IYCsBOEGYInf5jlCNOrO1bty7DOFazQRibqqwa/Ax1rvXPdwQRqtRMeYQGyv5FQT3lEoPSF0G59a5
	mxvR6ou2lKEbQwj7gyVEfBJkfl7k/i1GEF6y0WFbN2yUOqy85M7y65bURZXmwrNexCwpkrsr0eGD9
	a+VldRzIuBX/aaDQpEdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCjU0-0006sy-Qw; Fri, 13 Mar 2020 12:32:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCjTs-0006sF-8A
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 12:32:01 +0000
Received: by mail-wr1-x443.google.com with SMTP id s5so11909982wrg.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 05:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=nkJTLjWp/ZvPZWaJtzZTNn9m69bxqKBFlhfJaMFnbMw=;
 b=XRoPckVuNUtZmv/Cb5MFur3Ea3UulvDP2g99TSXf953Gh1SPRQeT6DFpIvMwpVIDG4
 Z67R0VLBop2l4TRE/KPlXu8Dt+h8F8utzDIxjg7RoyBaLXqtMEfwBFKZL3BS4nbr+5ib
 Ipob4oSPQH8YJgNdZlSfSt0QGiwZE6xoltIYLGYMDFj389MTRXLisq/3VhqlaY9PMoEK
 8BRCmv9FTouaqkmW/dBshkW3dKtDilkTTVno5u05RKCWUd9Wsh22b9jmJeE3+SRzNi/U
 Xi8eYMUb8bWyNQ0m61si5daI2CpoEuU2SYeCnkVr5lJKYVgemsijdbGK3yo3cwZSxh0Q
 DwzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=nkJTLjWp/ZvPZWaJtzZTNn9m69bxqKBFlhfJaMFnbMw=;
 b=LLgO11vMMUO/FrZl0AJM55TXJn6fdGEpA8rx3I+EoYmj2dUfn9ZsatwrEHMj6OHAU4
 HME0xKSFlnCAXOyXwOpSiqSMtPViP9n/KolCC/LBMfZWTyRhoL4viIh5kM2XDP1GulW5
 shZJjA0XbhFFPcwy3bJPwR7MuVxjOhsvypqyPveYbA1cHATq5iJMTe1wRYcdGHzTFlLR
 kazQavek2LgJD2Vt7bmgwGOCzpWH1jbiLQ3+EGBHvsoW3nc+sG5aN3Xf3CxVs9z+Kwbs
 Elzasvopi6pJLKI4UIOYN+2vZDNv50aND5owhSRh16MDG3zae5W/ZUtteCXUcwZKr9Y3
 Efdg==
X-Gm-Message-State: ANhLgQ11uvMFUaMabTjOZ66rlnvTN+E3UqQ68hoMJDWiZ3fyA/IUjGmz
 +PfVuQSAFnwL2h7vZzzhpO9Vlg==
X-Google-Smtp-Source: ADFU+vu6dcTKKhIsRtRu5AWKMxBh+Il5Nx3NH3Yy5uCwJJN9lazkuBAfHWNFO7rkGaVzqBqjRA27Yw==
X-Received: by 2002:adf:9364:: with SMTP id 91mr17174282wro.223.1584102717997; 
 Fri, 13 Mar 2020 05:31:57 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:40fb:3990:3519:cc26?
 ([2a01:e34:ed2f:f020:40fb:3990:3519:cc26])
 by smtp.googlemail.com with ESMTPSA id l83sm17191214wmf.43.2020.03.13.05.31.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 05:31:57 -0700 (PDT)
Subject: Re: [PATCH] thermal: imx: Calling
 imx_thermal_unregister_legacy_cooling() in .remove
To: Anson Huang <Anson.Huang@nxp.com>, rui.zhang@intel.com,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1584088094-24857-1-git-send-email-Anson.Huang@nxp.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Autocrypt: addr=daniel.lezcano@linaro.org; prefer-encrypt=mutual; keydata=
 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
Message-ID: <58ad76cb-5187-cb59-87cb-e6b75051b46a@linaro.org>
Date: Fri, 13 Mar 2020 13:31:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584088094-24857-1-git-send-email-Anson.Huang@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_053200_298159_3A5D6163 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux-imx@nxp.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDMvMjAyMCAwOToyOCwgQW5zb24gSHVhbmcgd3JvdGU6Cj4gaW14X3RoZXJtYWxfdW5y
ZWdpc3Rlcl9sZWdhY3lfY29vbGluZygpIHNob3VsZCBiZSB1c2VkIGZvciBoYW5kbGluZwo+IGxl
Z2FjeSBjcHVmcmVxIGNvb2xpbmcgY2xlYW51cHMgaW4gLnJlbW92ZSBjYWxsYmFjayBpbnN0ZWFk
IG9mCj4gY2FsbGluZyBjcHVmcmVxX2Nvb2xpbmdfdW5yZWdpc3RlcigpIGFuZCBjcHVmcmVxX2Nw
dV9wdXQoKSBkaXJlY3RseSwKPiBlc3BlY2lhbGx5IGZvciAhQ09ORklHX0NQVV9GUkVRIHNjZW5h
cmlvLCBubyBvcGVyYXRpb24gbmVlZGVkIGZvcgo+IGhhbmRsaW5nIGxlZ2FjeSBjcHVmcmVxIGNv
b2xpbmcgY2xlYW51cHMgYXQgYWxsLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxB
bnNvbi5IdWFuZ0BueHAuY29tPgoKQXBwbGllZCwgdGhhbmtzCgo+IC0tLQo+ICBkcml2ZXJzL3Ro
ZXJtYWwvaW14X3RoZXJtYWwuYyB8IDMgKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlv
bigrKSwgMiBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFsL2lt
eF90aGVybWFsLmMgYi9kcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYwo+IGluZGV4IGQyZmEz
MDEuLmU3NjFjOWIgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy90aGVybWFsL2lteF90aGVybWFsLmMK
PiArKysgYi9kcml2ZXJzL3RoZXJtYWwvaW14X3RoZXJtYWwuYwo+IEBAIC04NjUsOCArODY1LDcg
QEAgc3RhdGljIGludCBpbXhfdGhlcm1hbF9yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgCQljbGtfZGlzYWJsZV91bnByZXBhcmUoZGF0YS0+dGhlcm1hbF9jbGspOwo+ICAK
PiAgCXRoZXJtYWxfem9uZV9kZXZpY2VfdW5yZWdpc3RlcihkYXRhLT50eik7Cj4gLQljcHVmcmVx
X2Nvb2xpbmdfdW5yZWdpc3RlcihkYXRhLT5jZGV2KTsKPiAtCWNwdWZyZXFfY3B1X3B1dChkYXRh
LT5wb2xpY3kpOwo+ICsJaW14X3RoZXJtYWxfdW5yZWdpc3Rlcl9sZWdhY3lfY29vbGluZyhkYXRh
KTsKPiAgCj4gIAlyZXR1cm4gMDsKPiAgfQo+IAoKCi0tIAogPGh0dHA6Ly93d3cubGluYXJvLm9y
Zy8+IExpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwoKRm9s
bG93IExpbmFybzogIDxodHRwOi8vd3d3LmZhY2Vib29rLmNvbS9wYWdlcy9MaW5hcm8+IEZhY2Vi
b29rIHwKPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo8aHR0cDov
L3d3dy5saW5hcm8ub3JnL2xpbmFyby1ibG9nLz4gQmxvZwoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
