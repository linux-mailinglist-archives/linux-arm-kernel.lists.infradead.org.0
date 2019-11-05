Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 251C4EF45C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 05:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTVNPjiMIsKu4V/d487oF76PFjoObe4FM8dlGePppBw=; b=YLXkzdEq7GpV0Q
	AMPHfESRpErDbeZ/OWbjmx/A6c8wEJiPhXKforpDLbcyGNoBqcoFp8pCTgyMYijEDcdkLaWdPgGfv
	pbOxp/dlEZDSTmtK5p5TvUHhiz/httescmSSMbShukNa0y9JmkhoQK155YrLx9UiRjSRL8qkvhav3
	PJjfwmzUDGrExijLzpl+4U0ReRrRCO9pst5NK4YZi2RFHLQHY6fd3vJbr54Ny8INvDOV1+irLQZr8
	HkCHtUDwqt3RBAusqRqJoFZUXSxo9rxE2jFZpgAO+5PZh1LO486vNtmH93rlELDqtJXriWQ3Su93R
	j1Nicfk4bi1tunh9hXEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRqAB-0007t2-9j; Tue, 05 Nov 2019 04:09:51 +0000
Received: from mail-ed1-f65.google.com ([209.85.208.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRqA5-0007sL-PL
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 04:09:47 +0000
Received: by mail-ed1-f65.google.com with SMTP id m13so8648884edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 20:09:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cJiJPG1Y/0GceQQN/maxcS6PgRWqwGygW/etGiQjg1Q=;
 b=n4F9yg+J3EViq+MIUlGyp6KaDkb0yYT1bMXOmrRSuXK3zYem9QIVDFAKNOP/inNcHt
 tS5cd/EVLUrNwcCwZ3uNfOlDOw3qojWdLwCkTAQjFqO7Z+uiDKK0ZPsk4bFlon0h61X9
 dwS4FdveTA5pApv1botbOVtRqG76X/QLCnRwK/A8WxUMSo9FVeL6oZ08y9MZPF2wtenc
 TIidnfbT7ZOiphrnPsCD06MKThqbVp6glpiVnv9zwI7z9qx+rBEsjxyql0rwVtTQXtWo
 bMVcGo2WJOoT9Wp+ZP0sVSQjis+i1El+4WtY7lVLVG/DQY5SVkS87iNRef3DyFIiEWk/
 4REw==
X-Gm-Message-State: APjAAAUfVuz85rMD4jBgM5c7zxLArZBo7jKk8VuKf0kj2/zNeeveZXiY
 g9YlITxXLtbrsog464Y/bHoHmYRR7+o=
X-Google-Smtp-Source: APXvYqw+AjsqV9Xm67JQNsn5dFk8ajCSidicVFamnlkrjavknJDeM/+5liCtk04W/Cg34x/+2v2/tA==
X-Received: by 2002:a17:906:4a0c:: with SMTP id
 w12mr10025093eju.306.1572926975809; 
 Mon, 04 Nov 2019 20:09:35 -0800 (PST)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com.
 [209.85.128.41])
 by smtp.gmail.com with ESMTPSA id t22sm946327edd.79.2019.11.04.20.09.35
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 Nov 2019 20:09:35 -0800 (PST)
Received: by mail-wm1-f41.google.com with SMTP id q70so19144151wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 20:09:35 -0800 (PST)
X-Received: by 2002:a05:600c:28c:: with SMTP id
 12mr2051554wmk.25.1572926975140; 
 Mon, 04 Nov 2019 20:09:35 -0800 (PST)
MIME-Version: 1.0
References: <20191031134905.241453-1-maxime@cerno.tech>
In-Reply-To: <20191031134905.241453-1-maxime@cerno.tech>
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 5 Nov 2019 12:09:25 +0800
X-Gmail-Original-Message-ID: <CAGb2v65W9gP_nyRRKoOyQjfQvsv2=KcjSeXNawSDJSk3huTDxA@mail.gmail.com>
Message-ID: <CAGb2v65W9gP_nyRRKoOyQjfQvsv2=KcjSeXNawSDJSk3huTDxA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: sun6i: Remove useless reset-names
To: Maxime Ripard <maxime@cerno.tech>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_200945_821681_6B461D9A 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.65 listed in wl.mailspike.net]
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 9:49 PM Maxime Ripard <maxime@cerno.tech> wrote:
>
> The HDMI controller definition in the A31 DTSI has a reset-names property,
> yet the binding for that controller doesn't declare it.
>
> Remove it.
>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
