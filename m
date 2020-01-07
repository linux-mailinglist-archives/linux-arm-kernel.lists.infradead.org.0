Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9549132364
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:19:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZOsG4gRntfJpc6N8YH1x1bY0dr5Z1q7ud+u89X9rAc=; b=ibmATbrosgB2E+
	5xigqyOZPXPwUhchLYT5C6hJ+9RvSKVlpthm0Fhlemo+JCWP4Ha3uN6e6oj/iZofscCsdtQoliHYF
	1OnCzf0VlKZ5w4VCVd34Zhn3SE214+DnRt/nbY2qeygmdBSIMwFCJ6ysyDmyrlUCudcL63rG4J+4W
	d5pgkl98iDS+kUVF1SGlfd5LNaHr+ldRd/SkNX8PMJqPOATJyr9N0dPzYflLXDXyl7amgaMIexzOd
	WEKv0rFl9W+YpXxVbMwPFaIsxVrY7xgPedXL8P0AXni0UkjMpa8wnM3qspnRmhlVpZexWCxxO0IkR
	CxlyzBHzk/Jp0On7lF3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolx7-0004Wp-A5; Tue, 07 Jan 2020 10:19:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolwu-0004VV-SH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:19:01 +0000
Received: by mail-wr1-x441.google.com with SMTP id c9so53264236wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 02:18:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=5OSpiBgLmyZRMYClNdG6v/2d9HzZ4xtRsYnQ1Jt34tg=;
 b=cKnu1Uhpwa9RJbuLbSDrHf3Wgs0qUh32dyk3Vf3CNLB3H+XFgRV3LYY++WjzX50qqR
 asC3BHLKYzx4cJHTxSmnxNhaNXxBRxS+rRC9lQ1tELV30j6JWutWLaA06W1pl9vIwwpa
 otlIUVVVWP0bY1TtRMeiK+mJuwzsjJW5tODutbCpXvg/Qov6F015M5N+HG1+I68wKkZo
 QHWI2FWglN5WoSGINA4ckO2KpqkGwfAgD+0tz0zfUYGxegUvboV9AglfWks09IEwjVVt
 aCDXpv0kOSa4Q42pp2W6XbYdp2WiL7L2OMBQu2jzs0axxf+QfoCJWgtfAxhGb//eudJw
 4iaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=5OSpiBgLmyZRMYClNdG6v/2d9HzZ4xtRsYnQ1Jt34tg=;
 b=dHRpuY8eC0h5T9Ox8AfvmR+piQ1HY8iMORpdJ/Up0dQyTevDuB3tUVeFtUq6yhzlLg
 +Q0sLfoSLR9q2Vc+b5vEvJX7USvOwbTqLuaFuhBxmZazB2cbQlgLKIEUCDOjUxsiXOqL
 irjpa7YtU2XHvi/MrUhG14NkYfQdijIgk12TW8b3A2eB2GIQg1zHjN6seniTbsEDD9Ka
 mWUObkf65EWA1GHEMQGGlhOrzMMygNoZeQdz1ie+TwRTq6g0YHiQ9vuWm/KVta7mMPXp
 puZBPYRXuqmVstoMHYfLN7LL11PTgiZRW8JG8qELLgzEkMvBU/It+TrmmchSZpMWWrtV
 ZZ2A==
X-Gm-Message-State: APjAAAXwIVDAtla9pwFOTsAZF21rnnzBQhVKMTn2Hd/aXRcQxmIi4x6Q
 MyqkM2RivIUPy7KxvXAGQjyRog==
X-Google-Smtp-Source: APXvYqz3Re5MwhTSC/BuabUjWdObG0LJv2kUstc3b+oywJXytPI+74gf5zIuTS4NULpii+z9mZXgwQ==
X-Received: by 2002:adf:e78a:: with SMTP id n10mr112714781wrm.62.1578392335397; 
 Tue, 07 Jan 2020 02:18:55 -0800 (PST)
Received: from dell ([2.27.35.135])
 by smtp.gmail.com with ESMTPSA id u14sm75650587wrm.51.2020.01.07.02.18.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 02:18:54 -0800 (PST)
Date: Tue, 7 Jan 2020 10:18:59 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v3 4/6] mfd: atmel-hlcdc: return in case of error
Message-ID: <20200107101859.GD14821@dell>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
 <1576672109-22707-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576672109-22707-5-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_021857_053741_FA1EBD48 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, sam@ravnborg.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAxOCBEZWMgMjAxOSwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEZvciBITENEQyB0
aW1pbmcgZW5naW5lIGNvbmZpZ3VyYXRpb25zIGJpdCBBVE1FTF9ITENEQ19TSVAgb2YKPiBBVE1F
TF9ITENEQ19TUiBuZWVkcyB0byBiZSBwb2xsZWQgYmVmb3JlIGFwcGx5aW5nIG5ldyBjb25maWcu
IEluIGNhc2Ugb2YKPiB0aW1lb3V0IHRoZXJlIGlzIG5vIGluZGljYXRvciBhYm91dCB0aGlzLCBz
bywgcmV0dXJuIGluIGNhc2Ugb2YgdGltZW91dAo+IGFuZCBhbHNvIHByaW50IGEgbWVzc2FnZSBh
Ym91dCB0aGlzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJl
em5lYUBtaWNyb2NoaXAuY29tPgo+IEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlLmpv
bmVzQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvbWZkL2F0bWVsLWhsY2RjLmMgfCAxNSAr
KysrKysrKysrKy0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDExIGluc2VydGlvbnMoKyksIDQgZGVs
ZXRpb25zKC0pCgpQYXRjaCBhcHBsaWVkIGFuZCBwdWxsLXJlcXVlc3Qgc2VudCwgdGhhbmtzLgoK
LS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpMaW5hcm8gU2VydmljZXMgVGVjaG5pY2FsIExlYWQK
TGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFSTSBTb0NzCkZvbGxvdyBM
aW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
