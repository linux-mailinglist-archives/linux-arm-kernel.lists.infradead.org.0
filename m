Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CC8D160C0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 09:00:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E9OKvfBySYBmhEQ/jgqo/4E5COAEpZAPFi5WzU+Byj0=; b=T8zbCjwpjHfOap
	XmxQ8MFBJaaTU2ApuVyobvZrqm2uUjdBzenRfZ4YzThSyBlIlEvDaQIK05kaGFGZ/tLjxadOL/ZKo
	2Jj6j0Pf0kwldPDRWbaQHAZNAZOw81rRsCRGqqWIplnFos5dlsEhavTs3lbF53YmocYz2P8lz9PR4
	rEhZrHOnOU44NL3S+mSP7JvzgEjABdnX7sLIeknQ30ULG2eHpg8dWE8FlmN9FugTmo2NoUBJQVfid
	gho32YbsJbWo62xq/pQWnzYQa0YRaKagvaX+FwEFKARJZeUVe1oHx6ZK5CuzajPqXO6Q21nl5hy5r
	iF0Brde5irgfpmN3h5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bJw-00030D-CV; Mon, 17 Feb 2020 08:00:00 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bJp-0002yb-KH
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 07:59:54 +0000
Received: by mail-ed1-f65.google.com with SMTP id v28so19562605edw.12
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:59:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Diza8Cc5Cpy+OVsRi4P0IsWcjJ4gPjcUytSTU6gocRQ=;
 b=NIaIennl5KTFXF4zz9devZ1IG6M7tJ/8q22fuLEv/TNwHM8fequQ5qU09gexae15P0
 9AUrlCkIN0QnFYnRH40cXqhkBVg6Ehgya2JFuDsSNvwz7R/XjZV0qwHitgtF1eDqZY1l
 L/qbLYv7vVFELcSHCmdJ/igtBdBki89u+jFzu/bDrz+thiz5LWQ2xZvh1c48wZQ671E5
 2E9iiKT8kJXfZIeWoZYIp0yer2DO/1sPX1njLrcjgZivRrlk9g4IOfPJ1/K2ohHjrQH2
 GxePM2EcUsmd/We3oqYmMQsTXTQT62I1x3eFlyIcaYDDtiP/gbQ4CPU0lmJdvXZRrd4N
 XGGw==
X-Gm-Message-State: APjAAAVq7LQQ/H9Be8sL7izHypjkQJfrCL+1+MMiZuHXCX3s/81PhzLX
 /yj374NBeVO0q59wjRgZrbEIMt7D6Mk=
X-Google-Smtp-Source: APXvYqxurpnh9Dulb2Z+gIj8ZZ+uoCecnUJqS0ZdiMCHFCMw/I2Ag3tnUPV8eXuYmukYNu7DoPKb5g==
X-Received: by 2002:a17:906:c7d5:: with SMTP id
 dc21mr14147128ejb.316.1581926388165; 
 Sun, 16 Feb 2020 23:59:48 -0800 (PST)
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com.
 [209.85.221.54])
 by smtp.gmail.com with ESMTPSA id t1sm834433ejg.32.2020.02.16.23.59.47
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 16 Feb 2020 23:59:47 -0800 (PST)
Received: by mail-wr1-f54.google.com with SMTP id w15so18413155wru.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 16 Feb 2020 23:59:47 -0800 (PST)
X-Received: by 2002:a5d:484f:: with SMTP id n15mr20431084wrs.365.1581926387451; 
 Sun, 16 Feb 2020 23:59:47 -0800 (PST)
MIME-Version: 1.0
References: <20200217064250.15516-1-samuel@sholland.org>
 <20200217064250.15516-18-samuel@sholland.org>
In-Reply-To: <20200217064250.15516-18-samuel@sholland.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Mon, 17 Feb 2020 15:59:37 +0800
X-Gmail-Original-Message-ID: <CAGb2v65jWNCss88961zXT5is4LQQFh=Hcxx9ydn_bGqR7Sig8A@mail.gmail.com>
Message-ID: <CAGb2v65jWNCss88961zXT5is4LQQFh=Hcxx9ydn_bGqR7Sig8A@mail.gmail.com>
Subject: Re: [RFC PATCH 17/34] ASoC: sun8i-codec: Sort masks in a consistent
 order
To: Samuel Holland <samuel@sholland.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235953_666288_8A3BF323 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Mark Brown <broonie@kernel.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 2:43 PM Samuel Holland <samuel@sholland.org> wrote:
>
> All other definitions are sorted from largest to smallest bit number.
> This makes the AIF1CLK_CTRL mask constants consistent with them.
>
> Signed-off-by: Samuel Holland <samuel@sholland.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
