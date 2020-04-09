Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFCFD1A36DC
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 17:21:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rvBPuHKeYDxF/pXvZPmQ2cKRBCfDxzSYpG7/VDQx8V8=; b=s9roZu5Sk9HdvC
	spYkrX4SXJW7JoW981SOGsudrZqJ7kY+S9mtm1fZxp5GS+7VY9bT8G0VGCSZYNVCKc2dCv9YfI6LH
	ewK/D1RK2qhhkjDMX/jL9IApMG6r8AZs6Utn0bO25QRMZ9SCcf5ODyyF5Uo6hioeASQvCU+b9VANX
	vR9AlfhO/uY642jdkx9yZkxmm4G1EjdeA/N09/30XSPlZL4w/pgejc+Ah85bilQNfSmZrIYTOgvvO
	clWtHtns9ci5hfoiQe2+RrlFrxwKeu6ZHtJkp2Jb0SgBR5a0od1tZ6ETegSUvI8y0DZDnw4fYafjB
	7NVfjGcuRoFE3Xxn2+Tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMYz9-00014a-5M; Thu, 09 Apr 2020 15:20:55 +0000
Received: from mail-ed1-f67.google.com ([209.85.208.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYyr-0000w6-Go
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 15:20:40 +0000
Received: by mail-ed1-f67.google.com with SMTP id i7so190254edq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=clzy1dbE4dM3+sTXvQLGQ3bT7gyjD6WOWMoUygp0K10=;
 b=lYKa9WpI3O2sMVU5jLzekMEkzXzdSRbWy2KL8b//MSp5x4DhDPAx3M+Rl4AaVXC+M3
 CjNuKS8ClsIW3mXVU+05HNFKeLBddbK8lER4epDZhfGXJcAKj5VrW1xRPqvZr08g3cF0
 vFSaiXkYPq459zBOPDKi7EKdwFFmt12LU0LvtNSaWGYK9kzcwfY/AHUZg3fTC1VKrhPH
 ODQP5MwBlc75VkjhPjLb8VfSI06kT005WIdu8M0gOmBtf/Mc5I4vPs3q8ekFgW16O2Vo
 ikg3WWqbwZlgyAO36XDfcbDaeBEhMHWWEtjyZ5f4W48s/0QgT6eGjoX0fjbK77mXS9TD
 pvyg==
X-Gm-Message-State: AGi0PuYRdJ82m4FyHtMGo+jSKOPkVTqQ/X8HYywm6UuV+qVklr7VieaV
 au8qO9KZRSq9Ex2Oh63kUfZv1cfYxzY=
X-Google-Smtp-Source: APiQypLhofCnjIcYQoAZyvGCOH+2LUyVwBB6oGXVjc3DqCdP5c00PCoFj0vBVYdzRLiB6xIv+Hf2OA==
X-Received: by 2002:a17:906:4bc4:: with SMTP id
 x4mr11902772ejv.201.1586445634807; 
 Thu, 09 Apr 2020 08:20:34 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id p8sm3108708edm.96.2020.04.09.08.20.34
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2020 08:20:34 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id k1so12413458wrm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 08:20:34 -0700 (PDT)
X-Received: by 2002:adf:ec02:: with SMTP id x2mr14639381wrn.365.1586445634028; 
 Thu, 09 Apr 2020 08:20:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200317155906.31288-1-dev@pascalroeleven.nl>
 <20200317155906.31288-5-dev@pascalroeleven.nl>
In-Reply-To: <20200317155906.31288-5-dev@pascalroeleven.nl>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 9 Apr 2020 23:20:23 +0800
X-Gmail-Original-Message-ID: <CAGb2v67GR2x2TJU_MVfD8S=gQO7gv4ohhfGBkLD2CtSCMyNktw@mail.gmail.com>
Message-ID: <CAGb2v67GR2x2TJU_MVfD8S=gQO7gv4ohhfGBkLD2CtSCMyNktw@mail.gmail.com>
Subject: Re: [RFC PATCH 4/4] pwm: sun4i: Delay after writing the period
To: Pascal Roeleven <dev@pascalroeleven.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_082037_588803_342A4875 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wens213[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wens213[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, linux-sunxi <linux-sunxi@googlegroups.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 12:00 AM Pascal Roeleven <dev@pascalroeleven.nl> wrote:
>
> When disabling, ensure the period write is complete before continuing.
> This fixes an issue on some devices when the write isn't complete before
> the panel is turned off but the clock gate is still on.
>
> Signed-off-by: Pascal Roeleven <dev@pascalroeleven.nl>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
