Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AA6A15D2E3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 08:35:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HxzaVhUqI+N0D0t4DnsYMlgDEAPueTweP8Si+HQuLGs=; b=lSedCvSoIm/4Eh
	sFNEgY07Cf9CpfHw/UKuY/eerY4kSPUYxGfz9ESJAzwSbU5tvqIT0G/kaMMiEUrmQ8cyKx6XEQ6kj
	eWsQcupifgYyXjxCmsdW7HpwtGA60zrxcYdm5St0aYRZWr0Rbs81hnm8XB02+at9GFRl4VHlTMZCF
	0AQ+rcANjDV1mnnEtK5XBWM/KfNSSla9DPmFC6gknd8DBqL2k2vdzE0kbhkpgVq8aoLiBoN4wbjaS
	JLIq8gal6z8WoxvSZVXWLs5cx355WCmVm8SHyLo8kB/ZgPy2pQlFEFo0ix2uC2XKrtvXLiaI8guhu
	Z2RFu+kvruTaxByABV4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2VVk-0007Rp-3h; Fri, 14 Feb 2020 07:35:40 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VVa-0007Qw-BP
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 07:35:31 +0000
Received: by mail-il1-x143.google.com with SMTP id f70so7266673ill.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 23:35:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I1eG2NiwnMHcD+8ZEBk/TQZkr1ocwevoK5Q1stsGPh0=;
 b=UZ6fDAw4oN8KlRZPMnBhJd0Ev8dZAqA7G1U4REXYuJiWgp0PEusoKpzvbadHqnAz/M
 KuGdLZbhYZ1znnKIXK1Dvcdh+8gFSkQq1PS3X2WfvZ/h91VHULyySwO0TTPA/H4LgRxR
 KiY61A4PCh63xBcYTtdEEow9lR9sIb0KkJ1E4V7ei5bxq4/XqhxVv1ZftYgq8/Zgb/rt
 ZH/X8w3p0MKGOrspJqJm4+U+8EBBU7ghgaJkhkORbSfzHDTqMxihRLzWwt2y4YrjlvDk
 l9myA1r5rLq84wDBjMMRPmYwWrpLwKsCG5Udq8zQeW1I5ivieU3AxYA805kVSpDOu3S/
 Yfzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I1eG2NiwnMHcD+8ZEBk/TQZkr1ocwevoK5Q1stsGPh0=;
 b=JD2qeLvdf6JL5O1foSIRHWkas1HQ4gpOW/tBYO+q8QBmZ8s+tlsV4kIUtfvbbPAHmv
 EReyUYiJ2UXTYRhsH1IY4tqYpoW57KjOdQNe2dRxd4VvbEiCu9xpT5hHtd8Ag2E/1MHQ
 kukBQcfQlTlGbc+Rb2uVURqOqN0TIkJoKH4E8z2DnVyNxKH+9xdBYMp3e2faw79dSSr+
 dM2N7CFf+TMvjdv9JYz9Uw25lEgwDg7t5j/TfaNDxzbXBXcWGj4drldFQ/MECn2lnoch
 HkwKvPC3xIV1jwHYLcOtP8Z5FuzwDNszwrF0A8LZ9kl9RnLecBZ6rNr/qnwxSJxoOnKT
 H1fg==
X-Gm-Message-State: APjAAAVbDe2MHOCI+XSxG84VfVyVZi0MjmwJkYSQR9TIbVi9jHgwXbl4
 0cTeHA+1kHJrsAhTHcg/h4zV7xplr4wHnqfBKlAlZA==
X-Google-Smtp-Source: APXvYqzd5x9vUof79ss9P8ZSwc9sQuJX+BQLK7R4MtTtWZfQ+G1G0z3XtZitNmw0tqejxBn+XcigB+3jeNXBx5X/tnM=
X-Received: by 2002:a92:9c52:: with SMTP id h79mr1618052ili.213.1581665726341; 
 Thu, 13 Feb 2020 23:35:26 -0800 (PST)
MIME-Version: 1.0
References: <20200213153226.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
 <1581664042.20487.4.camel@mtksdaap41>
In-Reply-To: <1581664042.20487.4.camel@mtksdaap41>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Fri, 14 Feb 2020 15:35:15 +0800
Message-ID: <CA+Px+wW0BWz0-8L_UXJ-OYbwG6W9vmCWRr7kevpk0yokp+NKKg@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: fix race condition for HDMI jack status
 reporting
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_233530_417946_4CCB792F 
X-CRM114-Status: UNSURE (   7.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ALSA development <alsa-devel@alsa-project.org>, p.zabel@pengutronix.de,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 3:07 PM CK Hu <ck.hu@mediatek.com> wrote:
> I think sound driver could be removed for some reason, and fn should be
> set to NULL before sound driver removed. In this case, codec_dev != NULL
> and fn == NULL.

No..if you see sound/soc/codecs/hdmi-codec.c, plugged_cb is statically
allocated.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
