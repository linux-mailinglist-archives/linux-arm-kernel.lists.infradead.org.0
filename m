Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBA5179319
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 16:14:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9bEkVGvQgTWSbWqY0JTO7gNn9S87awpay9ZOJH0EoPI=; b=qAgcKv+2LtfGVE
	4E504Wj36KTnL3gAE3QGCywWuAzFvDj3JE+Y+v+3KJ3Xov7YVBlGuZfk6XI4zTMxWVKXFhV5nEkX8
	rw6/C6SHAm3W6jcQAF1pwzTtl4TcPzaCt+hbKvfuC4RxcOUJu3fw9ads0feNlCMpJ3XqkEmTFt9OZ
	4lPNllBAUs7svlcvmfpV2sgWs5F5LQedvcoS6h5tSlD9xIhbHET/xmRgZGMfhP7MWyYUiyPaIfAGp
	+SApllnl6BmjvNrc+u8GRuBgujG8q3ryfxmNBE9x/8c6OWObHddUyAIrDZMgMGoRWuYtPJZnEjruQ
	krd5y8IKC2xvF2iYdsPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9VjP-00029i-0W; Wed, 04 Mar 2020 15:14:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9VjH-00028o-3q
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 15:14:36 +0000
Received: by mail-wm1-x342.google.com with SMTP id i9so2510195wml.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Mar 2020 07:14:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=ntkN2Bt2eytzYo8LHWkETJyp51uX20eFB3He3wFrMNw=;
 b=ZNJALoFg7NbZIlCreszRaLeqZiUnLe5Flj9+uAcQPt3PU/qA2sI14FPluBDqsdXgI/
 1fCS41eNErjZSFzRZxMeJhMget6pFDN5fOEU5+wD+RfNcrP2bq430ItHZZiyifyZQgW3
 twe3emHg0w9L/OTmr73xd+dGeQTRQaOL6mgy5YZ44MHF5lmqa0qimopn4zrnYGSfjtiF
 Kt0H38kUXf0eNP0snIMzOSgkWWvUuN2AlPcKssLWAU+OeL9TfEr6zQU8fVQNV8lLdhuC
 g1+/G1KOcW7kuW7/qYTbHWrEqg03ocpLCwmC0M+VVslR/xkjNiv41SZ3qUEhqDtWATD1
 +BPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=ntkN2Bt2eytzYo8LHWkETJyp51uX20eFB3He3wFrMNw=;
 b=by0WpmuJFpinSqXpfYmslEdao9b9CYPmKdCZOd6DNx9mshtYqcELLorm+btuQ09Zl1
 oJsxhjlwaYyM8e5mYLwM9zD3WoI2BVEV57mO4D7lgc5hi1/BJCgxIBbnTVtEXfGiE9v+
 3PAFccQhg+W3Cz2corqJb04u9jW9cNDc5ZkIMDn7ZSJ9IAd5dAeqZ34Uqm14JpwEUA0o
 dBgDTQowOxzjKbNONoFPUi1Jp5H4ciH7nEGLEyDjYUND6avUqCzPkuZwcsdUVENJhx2P
 Mot5kq4fkUJSgPusgwjqyWf4suT6yIqJ/p3t/Wl38g95+U4NfVwZAuEV7JFsopoW1Xk8
 JxIQ==
X-Gm-Message-State: ANhLgQ3xwL8FcYJeDBNoMBIxCpidDUt0N24QJNmIX9OkLw/EhIzdb+bB
 DMpypMvkSlHcPH9nhzlSEZ+kXQ==
X-Google-Smtp-Source: ADFU+vsy9i8tQNn4aoMQESfufuXZTbONKfMbOIzTmzcSncwnWJ+oYo6P0UZaWtHBIQA1UKlaxZJ3tA==
X-Received: by 2002:a1c:f008:: with SMTP id a8mr4024812wmb.81.1583334872783;
 Wed, 04 Mar 2020 07:14:32 -0800 (PST)
Received: from dell ([2.31.163.122])
 by smtp.gmail.com with ESMTPSA id c11sm39066333wrp.51.2020.03.04.07.14.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Mar 2020 07:14:32 -0800 (PST)
Date: Wed, 4 Mar 2020 15:15:12 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: 
Message-ID: <20200304151512.GD3332@dell>
References: <1583249249-17380-1-git-send-email-gene.chen.richtek@gmail.com>
 <6b920875-8764-73a4-a763-788ce485b0cb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b920875-8764-73a4-a763-788ce485b0cb@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_071435_258548_6C4E5BA3 
X-CRM114-Status: GOOD (  11.61  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gene_chen@richtek.com, linux-kernel@vger.kernel.org, cy_huang@richtek.com,
 linux-mediatek@lists.infradead.org, Gene Chen <gene.chen.richtek@gmail.com>,
 Wilma.Wu@mediatek.com, linux-arm-kernel@lists.infradead.org,
 shufan_lee@richtek.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAwNCBNYXIgMjAyMCwgTWF0dGhpYXMgQnJ1Z2dlciB3cm90ZToKCj4gUGxlYXNlIHJl
c2VuZCB3aXRoIGFwcHJvcGlhdGUgY29tbWl0IG1lc3NhZ2UuCgpQbGVhc2UgcmVmcmFpbiBmcm9t
IHRvcC1wb3N0aW5nIGFuZCBkb24ndCBmb3JnZXQgdG8gc25pcC4KCj4gT24gMDMvMDMvMjAyMCAx
NjoyNywgR2VuZSBDaGVuIHdyb3RlOgo+ID4gQWRkIG1mZCBkcml2ZXIgZm9yIG10NjM2MCBwbWlj
IGNoaXAgaW5jbHVkZQoKTG9va3MgbGlrZSB5b3VyIGZvcm1hdHRpbmcgaXMgb2ZmLgoKSG93IHdh
cyB0aGlzIHBhdGNoIHNlbnQ/CgpCZXN0IHByYWN0aWNlIGlzIHRvIHVzZSBgZ2l0IHNlbmQtZW1h
aWxgLgoKPiA+IEJhdHRlcnkgQ2hhcmdlci9VU0JfUEQvRmxhc2ggTEVEL1JHQiBMRUQvTERPL0J1
Y2sKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogR2VuZSBDaGVuIDxnZW5lX2NoZW5AcmljaHRlay5j
b20KPiA+IC0tLQo+ID4gIGRyaXZlcnMvbWZkL0tjb25maWcgICAgICAgIHwgIDEyICsrCj4gPiAg
ZHJpdmVycy9tZmQvTWFrZWZpbGUgICAgICAgfCAgIDEgKwo+ID4gIGRyaXZlcnMvbWZkL210NjM2
MC1jb3JlLmMgIHwgNDI1ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKwo+ID4gIGluY2x1ZGUvbGludXgvbWZkL210NjM2MC5oIHwgMjQwICsrKysrKysrKysrKysr
KysrKysrKysrKysKPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDY3OCBpbnNlcnRpb25zKCspCj4gPiAg
Y3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvbWZkL210NjM2MC1jb3JlLmMKPiA+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgaW5jbHVkZS9saW51eC9tZmQvbXQ2MzYwLmgKCi0tIApMZWUgSm9uZXMgW+ad
jueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRlY2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9w
ZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8
IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
