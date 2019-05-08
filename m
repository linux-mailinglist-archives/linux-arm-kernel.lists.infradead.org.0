Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C1BC171FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:01:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g3/bn4FJGnYIJ8tmsAtWgezuf0xzWx76wfdqQBl8Udo=; b=j0T7TwWv1Vp/OX
	MMU8Wame1XHKFqsOSVtbgypzBOUgWqC2PjTjgqrUeVPUZV6E8rxkCgJRr3GcpGUhspz68a2Zm5v3y
	ReQmqw40EYeyr9ZVkjsFU7zHvvr3fr5V1I3F8+XSX00K5CMLq2uCoVb4fy7+wdzfFlDy39nDGnUJw
	sfBKmWtHycyCYUUOSxP5BlWDqP4zois8wTIa15IOavCx8eD7QiFvZvQ0BAKFDRIpdc/2hKuodY9i4
	kKWoQ3bUVagYw9T0kjrpzBuCgfAeRXLPEKB306IIFsdbDT3mpnS3WisRE6z9JiswozuNG6jIPhWNX
	KhfwECHdSGVe+/GGtFSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGZv-0004Zz-KT; Wed, 08 May 2019 07:01:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGZk-0004Ti-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:01:13 +0000
Received: by mail-wr1-x444.google.com with SMTP id e11so12603832wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 00:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=Jgc8tHCqCzHZc3qhbbI5pSp+Yx7TXVxlmwULDXcgErQ=;
 b=f5zEBuYHZeBkLFMRO2NhfXM25Cd+QEnnZaCuimuK3skx86XUNpgCO6magbg/pJIHpd
 2VCLFYSx34ENbvYzlrSGMa75iXhXuibmKPzDxRvQ6ll9yU89uNsKCB67hO9D8EJH1amu
 GKE/K5rDGCI62PTK9sxpN2EcyiFtx2pdqOP2ilQQ94Vw8wiSQGN4AgjNJkX3TJ/vAuxp
 900wcsdES0l7a9TmlDEQPYHb0Lh0hvvhiJnWo2iFUv1gFEGKMNTXK+ABnAkMBsK5Ctrv
 Mwc//YmUX/NDi5VC9SKBpG3x2xI5B2R3STAcX7xZdeLCpR7hiLf8pai8uDM37vQ6eSd1
 4srA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=Jgc8tHCqCzHZc3qhbbI5pSp+Yx7TXVxlmwULDXcgErQ=;
 b=sbTt0xb1YDgPUjKFv/Z+Wktu8HdIJonTxx4F5Qkkdc+asEiuelrOk27VnaOx9YYBw/
 sHCoGHgGNBEEDS5KWP+l/IRE6w8ZaSZ0NlhV36bwq/oZeWbNi2uw+B11E4sSvaY707Dk
 VbkRl8kxfX9eeaTlLhj+oc9juxopmLXJPCpgDMScX1wuA3HDRLbp+V1gAf/tlgXbRKav
 YDOT7HgWpOjn6nZatZIF9pCux/GimXq2nZJcXZDsXgJA5xh2Fos3yYF+UHZ2pmqCwIYj
 G7BOSJRRsslvANqp7EIOX9wBZK6twpEI/QafQy1dVyzmp8BoZ1ockAf3osnOjVcszsdL
 11vA==
X-Gm-Message-State: APjAAAVvnq1xodUZSM+mfO23soe0CAmRGbEQENHaE8zi6x2NF9+Z8RqB
 q+ZMjLegXCZsQRBGtNtoobYCng==
X-Google-Smtp-Source: APXvYqzH6iM6RnE4EChPWDuvGbuVhd/S7odkzz/aRHxlQLliQCVC3T+tM0j+VmKEfslHzUm1PP9DtQ==
X-Received: by 2002:adf:d081:: with SMTP id y1mr20069624wrh.283.1557298870131; 
 Wed, 08 May 2019 00:01:10 -0700 (PDT)
Received: from dell ([2.27.167.43])
 by smtp.gmail.com with ESMTPSA id r10sm1802946wml.10.2019.05.08.00.01.09
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 08 May 2019 00:01:09 -0700 (PDT)
Date: Wed, 8 May 2019 08:01:07 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Philippe Schenker <dev@pschenker.ch>
Subject: Re: [PATCH 1/5] iio: stmpe-adc: Add compatible name
Message-ID: <20190508070107.GG7627@dell>
References: <20190507143615.28477-1-dev@pschenker.ch>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190507143615.28477-1-dev@pschenker.ch>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_000112_171813_DDC2EF56 
X-CRM114-Status: GOOD (  12.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, Stefan Agner <stefan@agner.ch>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 David Laight <David.Laight@ACULAB.COM>, linux-arm-kernel@lists.infradead.org,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 linux-stm32@st-md-mailman.stormreply.com, Jonathan Cameron <jic23@kernel.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gVHVlLCAwNyBNYXkgMjAxOSwgUGhpbGlwcGUgU2NoZW5rZXIgd3JvdGU6Cgo+IEZyb206IFBo
aWxpcHBlIFNjaGVua2VyIDxwaGlsaXBwZS5zY2hlbmtlckB0b3JhZGV4LmNvbT4KPiAKPiBBZGQg
dGhlIGNvbXBhdGlibGUgbmFtZSB0byB0aGUgZHJpdmVyIHNvIGl0IGdldHMgbG9hZGVkIHdoZW4g
dGhlIHByb3Blcgo+IG5vZGUgaW4gRFQgaXMgZGV0ZWN0ZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTog
UGhpbGlwcGUgU2NoZW5rZXIgPHBoaWxpcHBlLnNjaGVua2VyQHRvcmFkZXguY29tPgo+IC0tLQo+
IAo+ICBkcml2ZXJzL2lpby9hZGMvc3RtcGUtYWRjLmMgfCA3ICsrKysrKy0KPiAgMSBmaWxlIGNo
YW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKV2h5IGhhdmUgeW91IHNlbnQg
dGhpcyBzZXQgdG8gbWU/CgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dCkxpbmFybyBTZXJ2aWNl
cyBUZWNobmljYWwgTGVhZApMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3Ig
QVJNIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
