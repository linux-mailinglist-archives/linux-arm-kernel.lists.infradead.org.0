Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55FF718B0F1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 11:09:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdgC6B5kHZ+Xt3Ydr176+yCaPye1PPdms9cXf8VbUD8=; b=GuNPBjJ9jTKQXL
	gYvnYOFXKiIR3p4RIe8VNBMYYRCOGQFMptnQW35Yqx/QrwwUtNrxD/RjkKCaIZI90V9ABK9928srW
	LZ+saZ9sTWw1bRwqDMM8ZO+DKKJpt5pztQ79H2+5f3lV+sfE2CjyyO4UhbgvkdqQrgHNYhTGGZMG/
	9mZLJwbc7nL6FKEMfH2Sl3d3+nwqkaSWVn5Nyx9u35FNtoxngNUuoqNAwnq0nCY+6wT8epjnOTNTF
	whT/rkYw+zSXZ19tLDx+blgl5VFIQigNWLi6CaB9q8K44JJX54SBLpKHcQJQpD6Mvqu+MuOvxHLNm
	/LmEGnID8H5Jj0xE7UhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEs7Q-0007Kz-8X; Thu, 19 Mar 2020 10:09:40 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEs7I-0007KC-5w
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 10:09:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id 26so152773wmk.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Mar 2020 03:09:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=RUn9UxzNYqDlVvjBdc02JsbNjG/1HKK11KHzgN8DpHk=;
 b=Zy7A3gLvgvG/ej7PLOBuw+h4UHQ5YbbbobNUkbeATbvkfuxaQMOb0vCCzKzXulEcjw
 Bflohb+c02EaGzLqe2kK0BuFaN6SiD4Vh3o5Z5DsCwi/hTTnjafJiooBLOzlmiLonQfq
 VErW8XaIC6T6pTsNu7/AX+kP031rgbcXZ6HgannJPJPKd2wqBCXPu006yPFmo21RUGiN
 L+Uzh/7ygSs1dOedYs1gEKqoqeQMW7ydWG1eRuOmfe3pM3dwE2yYYcQzmxvI3QcPe2f3
 XzwNrVNlGh2T8ZCEksGYeFItDSMGoRFJuF3kAKSgBT79fR1850m+Cy0qSAYAGwYgneQl
 Pkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=RUn9UxzNYqDlVvjBdc02JsbNjG/1HKK11KHzgN8DpHk=;
 b=aVHo4yGR4O2OjRyI+H3oDpDMvflNg77WyqK4E9B0muUYdF4j9HMVwUEBj5Iv2ygQJR
 oPS2Sy/7plWXSYLvu/WBm9lkJgfj7iSp0bMcTiaHDdX2JUGFae7LXlKGV18JAUrnzy4h
 eT7AcAcvfAsuOOVKnLXhTpmYx+MY3VVHHgWXEVcR9SymjOqs0gZIs/4nYXD8e15QL9/E
 3QwzSogZpzP0zTHh+Cb32KvevoIj+JAv4uHsnXwa0rs89ji/mZ9F3PNTh5bt/46zetur
 CmEa34U8AnI8QA6aDysDCkvwR90IrwdpxHQdaEFq7wOZNdwqTMMRIRHxEJ9rSkoZJgTE
 m3sQ==
X-Gm-Message-State: ANhLgQ0Wyo2q9JuqyvIN3CVKQNOM29R2Qe+r4hXOkpZ+4Xv1WF1FxRSW
 uA83MvQAbFYiLloFMTCGfTuvpg==
X-Google-Smtp-Source: ADFU+vvPWW5ImdZ2pav4UsRH9+6PgZUguig9OJgjiIdwzr6ph+GkNIPoA4BMw5D7ED82x6qxdypSqw==
X-Received: by 2002:a05:600c:2319:: with SMTP id
 25mr2829698wmo.106.1584612568933; 
 Thu, 19 Mar 2020 03:09:28 -0700 (PDT)
Received: from dell ([2.27.35.213])
 by smtp.gmail.com with ESMTPSA id h16sm2730355wrr.48.2020.03.19.03.09.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Mar 2020 03:09:28 -0700 (PDT)
Date: Thu, 19 Mar 2020 10:10:14 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH v4 2/3] mfd: stm32: Add defines to be used for clkevent
 purpose
Message-ID: <20200319101014.GA5477@dell>
References: <20200217134546.14562-1-benjamin.gaignard@st.com>
 <20200217134546.14562-3-benjamin.gaignard@st.com>
 <e9f7eaac-5b61-1662-2ae1-924d126e6a97@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9f7eaac-5b61-1662-2ae1-924d126e6a97@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_030932_230874_2353856F 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, alexandre.torgue@st.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVGh1LCAyMCBGZWIgMjAyMCwgRGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gT24gMTcvMDIvMjAy
MCAxNDo0NSwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gPiBBZGQgZGVmaW5lcyB0byBiZSBh
YmxlIHRvIGVuYWJsZS9jbGVhciBpcnEgYW5kIGNvbmZpZ3VyZSBvbmUgc2hvdCBtb2RlLgo+ID4g
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBHYWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRA
c3QuY29tPgo+IAo+IEFyZSB5b3UgZmluZSBpZiBJIHBpY2sgdGhpcyBwYXRjaCB3aXRoIHRoZSBz
ZXJpZXM/CgpOb3RoaW5nIGhlYXJkIGZyb20geW91IHNpbmNlIEkgQWNrZWQgdGhpcy4KCkFyZSB5
b3Ugc3RpbGwgcGxhbm5pbmcgb24gdGFraW5nIHRoaXMgcGF0Y2g/CgpJZiBzbywgY2FuIHlvdSBh
bHNvIHRha2UgcGF0Y2ggMSBwbGVhc2U/CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFy
byBTZXJ2aWNlcyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0
d2FyZSBmb3IgQVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxv
ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
