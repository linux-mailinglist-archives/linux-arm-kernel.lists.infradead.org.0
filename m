Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5666F120F3E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 17:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Usg425YHY+Qk44WJfu/xGjaiE6h8409xETDGgFFlFMk=; b=Lagd4VUR60OBcP
	vjDJGDlBmSUYOJYevzXOLCSDF54zedj1rEKCOVl6DADCTSpT18Ftu4IifgYBloEe7etgmWe9brxto
	e4ppjt68ilhCV4KKWTEANf3cr97tVqIkK0OzEREkg+OpgC/YEfoFDD4xluzJULy++48zjT5AJdfnM
	6ZqxrU7X1NFfm47SBDmrcBEzAeQ2U2lRjwckf8oReoqh4kEPQIJKeNxlKlhJ9J6aMHgf30dm6lgbH
	LY/WDfjWiYNBYWOas5y/7cLO5vppHQUJzbPNGDCo1JdNYotXSmwnJ3IjLfeLIvWiMNj+dngQaQmTW
	nc0rwtWpnJydUtTXitcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igt8c-000824-E5; Mon, 16 Dec 2019 16:22:26 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igt8R-0007Tl-2t
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 16:22:16 +0000
Received: by mail-wm1-x343.google.com with SMTP id p17so7373869wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 08:22:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=GnQyCw6x7n+jK/JpwBjmwmwD0/tfdVHGIHYKi0tkEAg=;
 b=yU153rUAiGDMblyab1aLX5Xp3Uw5PYZqTAT8vixm/kZ4L5x7wgHyWk71KcxTeKGeth
 HskWwIi2VauSQ2NDfPFH0JTev1/wTYwIskArt8N1P1tAeS6LBUbbXIKKTNzd8ZyyJpvu
 V1kYKxpVGQz316/1D0zfG3H66S+IM8fVVmzKWkL/0ePtwstdBFP1hgZ/SA/Lj8kJZEwI
 fXeBCSWTtqmSD9SQk/kpov3lOk+co+SuNKs2Ld3MJVYhvWOX8MVA95kbtEYNbQOUTx2h
 Vin/whhGQOylyIQzh+ozGUAp92a3LfIL21EUIstV5LHXz97hBKwX47iZmIutTRpyxpfB
 H0Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=GnQyCw6x7n+jK/JpwBjmwmwD0/tfdVHGIHYKi0tkEAg=;
 b=lE7YImPm+dTme8qkGlt+0DLr9Blz7l3aNRd2kwJr+T4Yibg75Opjo1jwb7ohAX+Ws3
 fDsyZ59Y56qujtvw+bu6YK2yRW09CN/76rRNUkAHwpCol31RkJWA+mCdLy3ztFJGDrPx
 mco4d9svuOvmz58I9cBSk7Aw+XrtrVl1MROtuR9RCLezcYCscaz+gQDnTfuZMyP7vmsD
 Mnx4nDqBfPjI+4dcCdr1EB5rnwSBRZ5jdl92qHTIagwoGo+oUsojA8GkiLBs3mHth9HG
 JMEXPJnmKBa8i6sHiykRT1cqvd8J+J4E3OnMAQsx/NQ0VyRcAcF4VL5C7NmNo9N9rK3Z
 lQXw==
X-Gm-Message-State: APjAAAXYtwnKiqyLN2kXIAbBiMtYH25q4f/u+XwqrvugoSCPtVp8rNIr
 9gltdNXrC+VgSdH55x+scP+hbQ==
X-Google-Smtp-Source: APXvYqwvgRXgwlg/FjNnaLLIZCy6reV92SEVT6xh253ko0RuVtrnL2bgwwuPhxFDXUCM6NeHCChZhA==
X-Received: by 2002:a1c:e289:: with SMTP id z131mr29743147wmg.18.1576513333139; 
 Mon, 16 Dec 2019 08:22:13 -0800 (PST)
Received: from dell ([185.17.149.202])
 by smtp.gmail.com with ESMTPSA id x10sm21920943wrp.58.2019.12.16.08.22.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 08:22:12 -0800 (PST)
Date: Mon, 16 Dec 2019 16:22:12 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: Re: [PATCH v2 4/6] mfd: atmel-hlcdc: return in case of error
Message-ID: <20191216162212.GP2369@dell>
References: <1576249496-4849-1-git-send-email-claudiu.beznea@microchip.com>
 <1576249496-4849-5-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576249496-4849-5-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_082215_141269_56A7AC6E 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, daniel@ffwll.ch, sam@ravnborg.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gRnJpLCAxMyBEZWMgMjAxOSwgQ2xhdWRpdSBCZXpuZWEgd3JvdGU6Cgo+IEZvciBITENEQyB0
aW1pbmcgZW5naW5lIGNvbmZpZ3VyYXRpb25zIGJpdCBBVE1FTF9ITENEQ19TSVAgb2YKPiBBVE1F
TF9ITENEQ19TUiBuZWVkcyB0byBiZSBwb2xsZWQgYmVmb3JlIGFwcGx5aW5nIG5ldyBjb25maWcu
IEluIGNhc2Ugb2YKPiB0aW1lb3V0IHRoZXJlIGlzIG5vIGluZGljYXRvciBhYm91dCB0aGlzLCBz
bywgcmV0dXJuIGluIGNhc2Ugb2YgdGltZW91dAo+IGFuZCBhbHNvIHByaW50IGEgbWVzc2FnZSBh
Ym91dCB0aGlzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENsYXVkaXUgQmV6bmVhIDxjbGF1ZGl1LmJl
em5lYUBtaWNyb2NoaXAuY29tPgo+IC0tLQo+ICBkcml2ZXJzL21mZC9hdG1lbC1obGNkYy5jIHwg
MTUgKysrKysrKysrKystLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKRm9yIG15IG93biByZWZlcmVuY2U6CiAgQWNrZWQtZm9yLU1GRC1ieTog
TGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaW
r10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291
cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0
ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
