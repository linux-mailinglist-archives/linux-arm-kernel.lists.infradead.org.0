Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BD21C4FA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:52:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fdhQFIruyQL9JKqMMdajnTJQQhbmeTQtQnhS6T6J8c8=; b=TrFQxBprT/Nw5i
	zkCqm2nGt2LoO0NjIISSUjL/eeckbiqRivjfuNiFYLw86uKKh9C28nWGoeMmALXFbdHWFbB74eIpG
	+3yJ90a30rGnO9gNLfhZD6YsKZLW2it2hzAN36fKUKtl58Uf9drF+LLZSfWvRT+Bsz7tStY3DA5bA
	xgNzQ5M2RWXmTLuzNUvPkhig+1nZO901Fp5Sf2psYCXiMwr4wao5s/Jo9StEtnowqQCTkxXpwJLKb
	odZuBhnj01fEDPNwd9QUofPRgZ8kESD1+VaBQZBMRmzD9wWcKHiAZB3UvBCEYbDAOKn3iHjAh6DA3
	bDXJdYq11k3cLDDOE81g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVsNk-0002Ro-JS; Tue, 05 May 2020 07:52:48 +0000
Received: from mail-lj1-f194.google.com ([209.85.208.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVsNd-0002R0-8R
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:52:42 +0000
Received: by mail-lj1-f194.google.com with SMTP id f11so611589ljp.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 00:52:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0Y7Rnj17ii//R53Od+I3NriqOZPosXNwE7MSov+XlfY=;
 b=oz/5NvSUg7cL+uyyM7gpOR34h5qInGaOpipLOTEdGAP09GkqqfeN5s4wIrKklxMLpu
 D0ZsXgC8ajS9c/Zda1CKpS+hnBFFtZ357pqe5q2XjB/4PTpokDkDuPyYhUpGUSX3XC8f
 18b+cNd2i4RvOKbk+iwqgHwfdMftdIq2+66hEMwYB60BNML7mVwbElPjxVACuGFsS4vv
 l/GWSRw+0Drp3M/OokgC2tXn9uxLCf2xekxfdiel1PQMBXvuobXzroh9OZ0teEICbtq8
 HVYaseMvdQ/x8UCqXIuuKWlqKYyvWmik2KOBtBStENVVViPqTGYTX0Q3A8p18HJAQDjz
 49wg==
X-Gm-Message-State: AGi0PuZZP9ANUVVYlTKR9I4j26EpGQzpi3AePAnrgHBTNm4yYGYWc+jY
 mWiD43qpc4DcA1V9itpNS9eaFD8BWuY=
X-Google-Smtp-Source: APiQypKcj24GtO7hF+3+XVInTi9oI+FeUYZ1XhmsSd0UtYS4IuDkkG22FcwJDarGyT9sqKlcftM6OA==
X-Received: by 2002:a2e:8949:: with SMTP id b9mr1060686ljk.108.1588665159036; 
 Tue, 05 May 2020 00:52:39 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com.
 [209.85.167.42])
 by smtp.gmail.com with ESMTPSA id s8sm1259038lfd.61.2020.05.05.00.52.38
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 00:52:38 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id a9so564884lfb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 00:52:38 -0700 (PDT)
X-Received: by 2002:ac2:5290:: with SMTP id q16mr830193lfm.108.1588665158225; 
 Tue, 05 May 2020 00:52:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200505075034.168296-1-christophe.jaillet@wanadoo.fr>
In-Reply-To: <20200505075034.168296-1-christophe.jaillet@wanadoo.fr>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 5 May 2020 15:52:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v65PhkepV=1RzKr7bmF_iyjOEM3iu2a772uYPYhy+7Db=Q@mail.gmail.com>
Message-ID: <CAGb2v65PhkepV=1RzKr7bmF_iyjOEM3iu2a772uYPYhy+7Db=Q@mail.gmail.com>
Subject: Re: [PATCH] media: sun8i: Fix an error handling path in
 'deinterlace_runtime_resume()'
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_005241_301306_45EE23C9 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.194 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.194 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
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
Cc: Jernej Skrabec <jernej.skrabec@siol.net>, kernel-janitors@vger.kernel.org,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 5, 2020 at 3:50 PM Christophe JAILLET
<christophe.jaillet@wanadoo.fr> wrote:
>
> It is spurious to call 'clk_disable_unprepare()' when
> 'clk_prepare_enable()' has not been called yet.
> Re-order the error handling path to avoid it.
>
> Fixes: a4260ea49547 ("media: sun4i: Add H3 deinterlace driver")
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
