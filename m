Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD91E6477
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 16:49:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=01dySLz5poHCT69PM5Jw2RX43EtMh0bJuNZy0nUut9U=; b=Orusz3jcZEO/iJ
	rXt/RfruQD6H+Opf16XMOyFO/ro5VOihiWElQ03D0rN8VGVVZ2iBdoi0B6jgnMy1eJBQ6STMeLrxK
	BGs2T42rwQqTVX7GJRco2/69VVK0guPKMbApw3/g48I0169fl//SxIVubB/lZaDM+pYMZXtQtXpXH
	ynpipW8QEwZTIgr9VPi9I1XV1LpDppiDoBZ4VDNa7hMS0jzWq+zbTRx96oZRGLXRXRC1UZpJOI1ZW
	RDPRodbvsMLNGvtG/AGyE/OHmvWtDfWN1O84b6fU4+BPLeeCPjnq4s3AM7ZpaT1sRAr654LomJryM
	eb6/9HA6fLPTy4ejliJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeJqa-00023G-MG; Thu, 28 May 2020 14:49:28 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeJqQ-00022e-By
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 14:49:20 +0000
Received: by mail-qk1-x742.google.com with SMTP id c185so3299014qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 May 2020 07:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=7bgiq+hLHRX0DJp5HGAPibY152zraWoS1bf1ZUi8yr0=;
 b=K6fYhbLNN80hW3Pf3S2Qo3jCZMiRm8Yyt2Z0WsGO9l1UOg9rbBt4EhiCgeduYh9v2J
 Cu+K0SqzPmLZEo0x+tipWKiL/HHRuemXF65qU7QlS++2O92h6Rtz1FBrTLKpQxSF65dv
 yiRzSumOTtlF5dDuF9zxCbR1UIzy1aAXD1FkiNwIYn2Wm0PiF4uKafoFpnA6QtXtWbyQ
 Lvs6IVTwvtYeO96emfrhmenqmqgc1PdidYI3hbgg1K3+lk99R+yYx2lFOhs45rHz9LTf
 jR/cMidGMOI0O4ABpSJmCcDzcW6V1cd69mNF9Unv6ByQxucGJBA1oELurTpg3ZrLS6xa
 qT5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=7bgiq+hLHRX0DJp5HGAPibY152zraWoS1bf1ZUi8yr0=;
 b=Ur1wq2bsyvFLsB37lL7VhVRERi4wpY6jfSivRX7XLQEL8/VqBjGoT1DdIw7WfVkJEi
 iUMWxbI2w9GAxm+OkbBJRo7njymzwWd7K/3/fJNMSBLGQKpChoWvcjwgPnL0c+QjXgEx
 hr8jYf2kYZSWvTxOzlflYpi68EZzFQyNqavWOt5Fa3rGXgxlL5xxr9gy57DYCazMLggx
 A0JqkSpbE7LX86NMujK4iBfG5xa3GAjFHZ0eX+yE7xPoUDVk/gLPANwvRdl6S1i40lt9
 sWGuhs5KBcYensPuFH9TaPVpCFM3RHhX6+ijI43V3ThzYmLCoAqJy3jWTBjlnK45jVMz
 b4eg==
X-Gm-Message-State: AOAM532Lhl/u1aaZUzWTDAO6zw7XVZBO4t6QsxDDhYW8gt/X/STCE1EE
 5J0yOAcsiHgLuWFYXmA24XAa0GYWwROQzm2fZ9DaPQ==
X-Google-Smtp-Source: ABdhPJwMqRBjwPsgwb2FUKECIe64ZjaPiVPeaWousPYaYOHlGL5MTRIVN7nLAwXJjVoc8/Otc86MvbDhvL+AxdAQhlE=
X-Received: by 2002:a37:dd6:: with SMTP id 205mr2993984qkn.323.1590677357382; 
 Thu, 28 May 2020 07:49:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200528142241.20466-1-brgl@bgdev.pl>
 <20200528142241.20466-2-brgl@bgdev.pl>
 <20200528144456.GG3606@sirena.org.uk>
In-Reply-To: <20200528144456.GG3606@sirena.org.uk>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Thu, 28 May 2020 16:49:06 +0200
Message-ID: <CAMpxmJVB_L+otX2u80qwGjw4TXCJtwOXe=t11O4Daq3miMVk6Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] regmap: provide helpers for simple bit operations
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_074918_409775_435E1C5B 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 netdev <netdev@vger.kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
 Sean Wang <sean.wang@mediatek.com>, LKML <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Y3p3LiwgMjggbWFqIDIwMjAgbyAxNjo0NSBNYXJrIEJyb3duIDxicm9vbmllQGtlcm5lbC5vcmc+
IG5hcGlzYcWCKGEpOgo+Cj4gT24gVGh1LCBNYXkgMjgsIDIwMjAgYXQgMDQ6MjI6NDBQTSArMDIw
MCwgQmFydG9zeiBHb2xhc3pld3NraSB3cm90ZToKPgo+ID4gKyAgICAgcmV0dXJuICh2YWwgJiBi
aXRzKSA9PSBiaXRzID8gMSA6IDA7Cj4KPiBUaGUgdGVuZXJ5IGhlcmUgaXMgcmVkdW5kYW50LCBp
dCdzIGNvbnZlcnRpbmcgYSBib29sZWFuIHZhbHVlIGludG8gYQo+IGJvb2xlYW4gdmFsdWUuICBP
dGhlcndpc2UgdGhpcyBsb29rcyBnb29kLgoKRG8geW91IG1pbmQgaWYgSSByZXNwaW4gaXQgcmln
aHQgYXdheT8gSSBkb24ndCB3YW50IHRvIHNwYW0gdGhlIGxpc3QuCgpCYXJ0b3N6CgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
