Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0636E640A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 07:25:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tHN9tDNoDctHMQoFA6pB+cqQyPah0yNRoAiA3piGK3w=; b=b2YEedcK9hKbXk
	1YAjqmUgi0qonirJ2pJ8tPM4emE0dBkAxFvV/aSEYXLaVCN6wo9YZaoGz5tugGSlSWCVuoWpqaLa9
	EteALLvmijt2HiBLWO8djD75S2w/HFNB4zxFHqM+yK+U6lcC3YS9JeJQmndl0Htyf/X6Dao4kAi1n
	vktM03ZWA4pSJ7E2/85glcXTO1b3z94AMOTeieP6BOURTXMPDBHLtc2yESbmsLGOWCn6ga68d9jDp
	f0qJReZIUi4fJWwT+YPCCPfp9OHixLpO2dfi2ZBkPm5jtAqiCcBaO17K/TghIxpj21/uGghAnTgkE
	nmGYN/RwPmvlL/Tbks1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl56U-0000g2-P6; Wed, 10 Jul 2019 05:25:19 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl56D-0000C9-Pv
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 05:25:03 +0000
Received: by mail-ot1-x342.google.com with SMTP id d17so909350oth.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jul 2019 22:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ioMDB4xCRfyih9blEfQfFq/5H+9f5r/eOiGuXZsKTpM=;
 b=mNA1e83gi656UXPR8nqOQSjw8wH59lM6GanNHXNRGXbg3bq0gEGgsCw16oi+sZU9DJ
 eQZNOeldrdnuV/5hnGKQpKr1o2kQF/+U+p3TsmIt5rF6zYyIyCNLkjBN4/L5YKqKT399
 fjPfPjemWu2HGAWRYhrVRBy+683K0HsvchE32sejFHgVZACcqHIZ+f/pqMUocPt7Vl4L
 KWMDPgOhI1YaN2NTfaA9ps2KehruPFGrFg/YgM5cP42ecPkX2bSaw3Ozx3KQ593gVsOd
 gw5i9X/nIAPz3i1KLeKE3PdtZ5ohiIMDa+//oPJUWKzQddrhWXjk6v1O30WeFi5CPm/K
 /Etg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ioMDB4xCRfyih9blEfQfFq/5H+9f5r/eOiGuXZsKTpM=;
 b=DXVv7CtXm7KpxLh6APK8Pi4S1cucFhGivzJ6zPxhZ1QUWM636kdQVMCy0mxYWPnGtT
 OV/HRgmhZYf/eikIFxSpIQyfFgvJCNgZ0dznNQ40th5//NJl0IMkrBnnlD81DAP2BgYd
 nwngSdik/heiiMMii2jhdNO5Ao+mZmzzm7pygR1q771gKdeBTMpN34WJxw3cBB57n4Ol
 H96msVOmia0Bg0G8YI6d0wkIsbe49PSGGJvgPfZfnZ3OqrtzAstUTsiMqkZYatYQ5McS
 0MHNJDZOSaeYlww0imkOh+2bN1Aio+9S8Uz/uFkCR/VnBM4hLI/4PSxK/k5iXW7hJ+yY
 IZUw==
X-Gm-Message-State: APjAAAWyttlm1s3W/c6MV1itrClOcn0qgEnfwD/j2SawebGTjjLiWvA1
 xayzuU+WgM8AOwM0ZkLQieD5T5uFehc6bqYgsrqU2w==
X-Google-Smtp-Source: APXvYqzNWCTp+PGnXinfRndYKaIVZTZf7jZeNiuotZqNqZys/IitGZeb1egfuAbp/LgydGLR3qx1qbqBFaufmhseWLw=
X-Received: by 2002:a05:6830:2010:: with SMTP id
 e16mr9197123otp.344.1562736296734; 
 Tue, 09 Jul 2019 22:24:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190709182543.GA6611@hari-Inspiron-1545>
In-Reply-To: <20190709182543.GA6611@hari-Inspiron-1545>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 10 Jul 2019 13:24:45 +0800
Message-ID: <CA+Px+wVMn-wZ_aoAV2OMEg4zE7aoYG__my2EJM_PP5ghaXjoFw@mail.gmail.com>
Subject: Re: [PATCH] sound: soc: codecs: mt6358: change return type of
 mt6358_codec_init_reg
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_222501_858921_17E66917 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -14.4 (--------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-14.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>,
 linux-kernel@vger.kernel.org, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 linux-mediatek@lists.infradead.org, Shunli Wang <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 2:25 AM Hariprasad Kelam
<hariprasad.kelam@gmail.com> wrote:
>
> As mt6358_codec_init_reg function always returns 0 , change return type
> from int to void.
>
> fixes below issue reported by coccicheck
> sound/soc/codecs/mt6358.c:2260:5-8: Unneeded variable: "ret". Return "0"
> on line 2289
>
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Acked-by: Tzung-Bi Shih <tzungbi@google.com>

Thanks for cleaning this up.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
