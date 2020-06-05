Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 459871EF73E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5WcPL8igYHeHgVofYhmYCzUItcDc40S983OaWGnE1Fc=; b=dWlLoS/V8f+jnU
	KNuYnMwJUHmbIC+ib66bpWgUMOWnRXXAI6hXEBKstaphpH18ccuX82CyJKut4Hjat2dYKb1NM7ap2
	T09aqC8k/XZRAX32wkgB3+w+ZpeeQV0ThpYLMFD0mz6ay9i+1/I1iyTXQGHgUcXJwedMVkaMUgOl+
	YHC3ejHpMLY2gYc1k2g2X52EbkzvPV8VdUvyyBmVrmbfaDVdvY4bg44qtYDmsmM3ECH+utJRKLKj/
	GXWHDeZUWAvGWZCDNhyy1nuiRBlnOx0mhGDhWVNctwBfJK8L1oyTjpIQotSr75TKWGKBIZBKyAy18
	8ITuiffT5Ka4DTWffMWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBP3-0003un-GK; Fri, 05 Jun 2020 12:24:53 +0000
Received: from mail-il1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBOw-0003tX-Qj
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 12:24:48 +0000
Received: by mail-il1-x144.google.com with SMTP id p5so9333176ile.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 05 Jun 2020 05:24:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=kIfn0QHMP7CK4Hmgml37SRcHqGH4aTtKIuqHQUCLWRQ=;
 b=EawcP4EporkwrqfLPgvSKZWlEE1ID85TieWCHY9LwiKd+HIWVF0QxVSawt8hyzZZA8
 QXJ2pNFwn2Ify3QvL2OneyDAR505YIqjhKzJNYhUVvWgjj9lx52Iq2Aqz4dkftCr4YN5
 esT7/cpbLK9xB2nYLvrPz1qbc1Jt6Uo7VHWrud5qxemkEHW91lVv59CjdFHDnMAbn/BD
 kkCNiXNYmNFMH635f2w+rTyfZuBaHtwXgUEm3k2UI4/y5jZ373klw6RMSRCkefE+qdjy
 RqUsL1NqHhjxO/v4NWOxFztHbXvT7SRoAUQpFoeWdvf/XV9bU9cHguBRm9pITOknMnBd
 2W2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=kIfn0QHMP7CK4Hmgml37SRcHqGH4aTtKIuqHQUCLWRQ=;
 b=Qg5phyz2uPAfJfTxBtnIFQLuwwV1mp4yzPD+kLfQWtK0u4aKzl7DvvGOqK+a3yrdXK
 9mZ8goa6/WiIUWDbFFi/vDHOrrjVMe/UwqiGoKAOUTWn6KdQzr6zV1HgMhDLQCoWoPXi
 2xShQ2EJAd4ORgmAPprOxW70Cg/5FMRa8H/jDWKb9l4XTD/ARC1niXuTxB/oipzqPgUs
 PCEB4t6Gq+Oti+McewOP0qcuxjoIpNYPYvfj9YFRkVMGV64n/1ixU2opPS5OLngzafsM
 Urk0rtEPhBwohQFLwhWdtdUut20eyczKU6XeMc/pZAhlI4XPWp2IAP2FZnhv0J/bUDlq
 k9PA==
X-Gm-Message-State: AOAM533FiY1fQyxOCLEFcksL3jLFBIabFu/U0sSOL7VI55p1fEAztWqZ
 NDcSY7pBZcX/66zT13GdOHMnCuvmNKIPmr9ms2PbTw==
X-Google-Smtp-Source: ABdhPJxIJRIn8uLBn8iAB1Nr4R5l0zbAftEc1md7w19YTUWpfcp8liEx8XFB8UBZsNB8M/Dg27ZKhc4KMp4ZpswjQ+Q=
X-Received: by 2002:a05:6e02:1350:: with SMTP id
 k16mr7686913ilr.213.1591359882249; 
 Fri, 05 Jun 2020 05:24:42 -0700 (PDT)
MIME-Version: 1.0
References: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
In-Reply-To: <1591353222-18576-1-git-send-email-jiaxin.yu@mediatek.com>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 5 Jun 2020 20:24:31 +0800
Message-ID: <CA+Px+wV8U6Y-tppLPUdoOgQhpss-DUm-YDQX7TZ1uHHH7JMyZQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] ASoC: mediatek: mt6358: support DMIC one-wire mode
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_052446_885810_9B6EAFDF 
X-CRM114-Status: UNSURE (   8.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Hariprasad Kelam <hariprasad.kelam@gmail.com>,
 ALSA development <alsa-devel@alsa-project.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 howie.huang@mediatek.com, Liam Girdwood <lgirdwood@gmail.com>,
 Takashi Iwai <tiwai@suse.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 5, 2020 at 6:37 PM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
> Jiaxin Yu (2):
>   ASoC: mediatek: mt6358: support DMIC one-wire mode
Has done previous round review on https://crrev.com/c/2230089

>   ASoC: dt-bindings: mediatek: mt6358: add dmic-mode property
Has done previous round review on https://crrev.com/c/2230086

>  Documentation/devicetree/bindings/sound/mt6358.txt |  6 ++++++
>  sound/soc/codecs/mt6358.c                          | 23 +++++++++++++++++++++-
>  2 files changed, 28 insertions(+), 1 deletion(-)

With that:
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
