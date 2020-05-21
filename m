Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114F81DCC20
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 13:30:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vG7TByoavWzxV2TCYTPZDrN4jfyDRT1ThBejfH9WIbA=; b=LvwEfc3NeDifQ3
	hxLkzsXG5xCBR6SwnysJzp/tgxzsbcRKr/jPMMNWlGGByEHeCZetyfXrDQ5YEeaoVP+O3/hmFvVnz
	CxH/k+yDlIIqOXIQBJRUgLzyFz3Qe1G0RsVylAbY9q/MQmhsJOj+3vASxdlItrNRH/2ni7+uRbu0Y
	VP5nQKp3gD4YDsfh9kUxpSoQw3zghsmoznAP87yeRTQ9b2YCWXmoET9aT1EmcUVGBc08xqh7R8s8x
	Nw2OoqyCmg4fXT2cuF28TOd0EQhj4vYSII+jC28IhVWtijnA6oWgs5RUYV7YPZyDRPkfQwVG281o5
	jNUyYoG/wDWdRFVPWA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbjPL-0001jk-Bm; Thu, 21 May 2020 11:30:39 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbjPA-0001iu-Tx
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 11:30:30 +0000
Received: by mail-qk1-x742.google.com with SMTP id w3so1281492qkb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 May 2020 04:30:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mVnGuA/c41po031/Zyo9z05iki6LpXCl3bw26UlV5Og=;
 b=MqYN+vMiHTEaW4UwLRy16WRoYfu+LJ4pOncpItD4O1GRnxH8TmktN6T6b2PcHxyEwB
 /Ls2IApWVfXgN0RNquNulhQ49MIzfMO2KbQlpew/gmesTLhSAFACIhd9NN5hvF8aTXrJ
 9dGZyhMELfyMK2fbiMTxbSKpZ8EVlDN75FSZjN4lYOI29EfHTi0l6te+3DGNqlishUcI
 ufFCYzDFtCRCTDhyOG4tSbItgT3oIdpuWbG9YF8aGWnFAtPl3K8qizsCVOk3/weuXndt
 nd8yUP/5mHGC7HDR1cjV9fJCWbl4EUH4bqfDeIq+Fhmmrdj99nMfB4lAH2i7rVf5TT9v
 sLsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mVnGuA/c41po031/Zyo9z05iki6LpXCl3bw26UlV5Og=;
 b=gF3/vgk7eXSdQg2iubk+gL25T1YLjFxI0KS1ddin6L1QdyCmB55BJ4n0NGmSRNlopL
 busC6UsWQ4MHxoWv7LVUti1V0sp4kAjBAhQ4A2n93xOvMm1wvtfCMZVGVkIVZXQHbM6J
 uJ6NMLemWvr73GjeFUUlBReodxXzPlsKWJUY5k+gGvoyDXB14wpVXkUIjHuKV38FJ8Ex
 FSDOnnK7qNdFePrjR/xQdsyMZt2KLU0LPSerdhESj7z6V5YfEYGmbXjVij5rwsOy9hpA
 7nXgDHt7518St2u5M4MPR5FTMjR/a94FyXqOOnfExVwu3OFE2CyA2eH9TgkRz43M4Vk8
 A6Mg==
X-Gm-Message-State: AOAM530lrl/W8XFb1L0afCx6hgYjd7VL7lYxELRYRW9fMths5Qvg9b+T
 W07+EU9bliSPhTRIBP57wfi8g1s5wlupctAloS0=
X-Google-Smtp-Source: ABdhPJyt/PrPu0HyLCBNIAlcBPVwQP3EdSaZpX3l0+ThMZQ3Nc11G0djVdAg3aM+jm8BukBsG/8Iq0VgME50WXdM3Aw=
X-Received: by 2002:a37:a50d:: with SMTP id o13mr9327701qke.121.1590060626064; 
 Thu, 21 May 2020 04:30:26 -0700 (PDT)
MIME-Version: 1.0
References: <1589881301-4143-1-git-send-email-shengjiu.wang@nxp.com>
 <0866cd8cdb0c22f0b2a6814c4dafa29202aad5f3.camel@pengutronix.de>
 <CAA+D8APhHvA39wmCayeCsAEKmOJ0n7qOQiT1tZmFHr4+yASgTw@mail.gmail.com>
 <53258cd99caaf1199036737f8fad6cc097939567.camel@pengutronix.de>
 <CAA+D8APAMRwtVneqFsuBgAhozmQo3R0AQi0bVdUCQO4Af4xVfw@mail.gmail.com>
 <20200520123850.GE4823@sirena.org.uk>
In-Reply-To: <20200520123850.GE4823@sirena.org.uk>
From: Shengjiu Wang <shengjiu.wang@gmail.com>
Date: Thu, 21 May 2020 19:30:04 +0800
Message-ID: <CAA+D8AOiVVi3B4dzU8r=rCMz=6w9R=wxBkzAQ=0=RAQLKCWy8Q@mail.gmail.com>
Subject: Re: [PATCH] ASoC: fsl: imx-pcm-dma: Don't request dma channel in probe
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_043028_981346_BD7B39FB 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [shengjiu.wang[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sumit Semwal <sumit.semwal@linaro.org>, linaro-mm-sig@lists.linaro.org,
 Linux-ALSA <alsa-devel@alsa-project.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Timur Tabi <timur@kernel.org>,
 Xiubo Li <Xiubo.Lee@gmail.com>, shawnguo@kernel.org,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, dri-devel@lists.freedesktop.org,
 perex@perex.cz, Nicolin Chen <nicoleotsuka@gmail.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-media@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>, s.hauer@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgODozOCBQTSBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5l
bC5vcmc+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXkgMjAsIDIwMjAgYXQgMDc6MjI6MTlQTSArMDgw
MCwgU2hlbmdqaXUgV2FuZyB3cm90ZToKPgo+ID4gSSBzZWUgc29tZSBkcml2ZXIgYWxzbyByZXF1
ZXN0IGRtYSBjaGFubmVsIGluIG9wZW4oKSBvciBod19wYXJhbXMoKS4KPiA+IGhvdyBjYW4gdGhl
eSBhdm9pZCB0aGUgZGVmZXIgcHJvYmUgaXNzdWU/Cj4gPiBmb3IgZXhhbXBsZe+8mgo+ID4gc291
bmQvYXJtL3B4YTJ4eC1wY20tbGliLmMKPiA+IHNvdW5kL3NvYy9zcHJkL3NwcmQtcGNtLWRtYS5j
Cj4KPiBPdGhlciBkcml2ZXJzIGhhdmluZyBwcm9ibGVtcyBtZWFucyB0aG9zZSBkcml2ZXJzIHNo
b3VsZCBiZSBmaXhlZCwgbm90Cj4gdGhhdCB3ZSBzaG91bGQgY29weSB0aGUgcHJvYmxlbXMuICBJ
biB0aGUgY2FzZSBvZiB0aGUgUFhBIGRyaXZlciB0aGF0J3MKPiB2ZXJ5IG9sZCBjb2RlIHdoaWNo
IHByZWRhdGVzIGRlZmVycmVkIHByb2JlIGJ5IEknZCBndWVzcyBhIGRlY2FkZS4KClRoYW5rcy4K
CkZvciB0aGUgRkUtQkUgY2FzZSwgZG8geW91IGhhdmUgYW55IHN1Z2dlc3Rpb24gZm9yIGhvdyBm
aXggaXQ/CgpXaXRoIERNQTEtPkFTUkMtPkRNQTItPkVTQUkgY2FzZSwgdGhlIERNQTEtPkFTUkMt
PkRNQTIKaXMgaW4gRkUsICBFU0FJIGlzIGluIEJFLiAgV2hlbiBFU0FJIGRydmllciBwcm9iZSwg
IERNQTMgY2hhbm5lbCBpcwpjcmVhdGVkIHdpdGggRVNBSSdzICJkbWE6dHgiIChETUEzIGNoYW5u
ZWwKaXMgbm90IHVzZWQgaW4gdGhpcyBGRS1CRSBjYXNlKS4gICAgV2hlbiBGRS1CRSBzdGFydHVw
LCBETUEyCmNoYW5uZWwgaXMgY3JlYXRlZCwgaXQgbmVlZHMgdGhlIEVTQUkncyAiZG1hOnR4Iiwg
c28gdGhlIHdhcm5pbmcKY29tZXMgb3V0LgoKYmVzdCByZWdhcmRzCndhbmcgc2hlbmdqaXUKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
