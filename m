Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F0EA52A0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 11:19:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZI0FjYStt16eJjB57JSepxyl3Jrp+jYqLRNrskWx0sM=; b=C04fN5K5stc0iX
	2wVzGQ/OtOrerb1Zha8SN/8Av7mzNhx29FGELy5oTLZPQ3CTjPG+yqsJrM/rU4a6rW3fghhVZ+jt6
	9iXoCwDLkRFqC6+HE22bqVn9kXNMCWJ6aDS6mqCJrblqCuEE4aQ0jkV0W4Y94QkSav2siNc/hJIA3
	vX3rP2YQs76ZQUjUYQ+czDwb8mV3Ti/mqEd7izdqZdDbwT3OpbaIAmheexDrDzhCTvXxDIkG6r0hD
	yr1zm5EtGAtZP74HpzSSVM8lUS+km+dqhmPy/Y0JdYcesowTJlNbo4BpRuZ5NG7wLZ3ltKxMHAjZh
	+hFU+A/YTt4Ur5zaQ1yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4iUN-0004CE-3T; Mon, 02 Sep 2019 09:19:07 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4iTx-0004AS-Mb
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 09:18:43 +0000
Received: by mail-lj1-x242.google.com with SMTP id t14so12205981lji.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 02:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i1rIwTW5lY/ZdGEW/DCIV3Xef5lpoy5aMvxo+N6YWuI=;
 b=o+EGbYmWbClNVOF5FrfiRarkq8u7O/SOv3Tqc8HkxefKvGTGFr5yGmFVZgVzF4KJHY
 CHWra0LbiNkLT9xHmuLijrXX39KORN3ID3deC6FQ8DBGcUlMsoylij+E3Jx5ovn6Qffq
 ESR4bM00UWCteTkh8wKjV9WwNnCcnb5zGfLlkWI74rNHuJTi08vQQDOz74v72j10ac5a
 HGo7STadP+l4EVP5N6AqjX9AzXHpTcHyX5GXakjEyolT3/DBI1YYXO4vwfFcBr4+7Wab
 3J9M8fAoicdMhwOFJmU/PvswQOr+a32eGmNT5JUTJKfG2h4jAdGqx/HmMuby9eUVAWuk
 3lpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i1rIwTW5lY/ZdGEW/DCIV3Xef5lpoy5aMvxo+N6YWuI=;
 b=R/xWLpb5vFujJdyBZDu/rW0A9Rphtet3C43vJYGgow2jz15lyAF6dUFCIhmCHAb9RL
 PLU2MKWjCPxF0aD5LA+xN200WsnOHlHaLvbUc0Pwf7mogGUeWFIXPB889smcFHU9itix
 TxS3qT/3h0Eo8vUTYSZEiToRoZUWLgrS1KW2AYYfTmAl0iY3aOGE2zTHHNs28TYUMt7P
 /hIO6+KU3v/KHI8W9qwawPTgzPrO94C7aRxZ4f0pMGyG+/sQxbMputrdZuhN+Gqbb5ED
 dVmgMmcT7xdXG+DkVG9ZmZkzPcdgoaaafnzxGW4e3ZdkKxfz4D55SE3XvNinbhjEzUAe
 rOww==
X-Gm-Message-State: APjAAAW7mcF2EzR2KLGRS63pZAit0WIF95kiO6ZumKdDM2q76dGpz+nY
 ThpjjC/x437G82fT8jsjwk7sQh+53uCPzSwKlnY=
X-Google-Smtp-Source: APXvYqw3IH/Qq0DvUycRxdd2c9I/PiYamSvqRnuCLhc7IwJvnx/RN2GPGtuCDma9RE3PFwTSCTchx21P+MgE9MXvuro=
X-Received: by 2002:a2e:1648:: with SMTP id 8mr1242618ljw.194.1567415919395;
 Mon, 02 Sep 2019 02:18:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190821162320.28653-1-codekipper@gmail.com>
 <20190830114457.GB5182@sirena.co.uk>
In-Reply-To: <20190830114457.GB5182@sirena.co.uk>
From: Code Kipper <codekipper@gmail.com>
Date: Mon, 2 Sep 2019 11:18:28 +0200
Message-ID: <CAEKpxB=BnQNraPmTtqj0KWi982OWe0bGQ-6F4N5owPH_OX67=A@mail.gmail.com>
Subject: Re: [PATCH] ASoC: sun4i-i2s: incorrect regmap for A83t
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_021841_765269_A6BEBB8A 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (codekipper[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux-ALSA <alsa-devel@alsa-project.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 "Andrea Venturi \(pers\)" <be17068@iperbole.bo.it>,
 Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 30 Aug 2019 at 13:45, Mark Brown <broonie@kernel.org> wrote:
>
> On Wed, Aug 21, 2019 at 06:23:20PM +0200, codekipper@gmail.com wrote:
> > From: Marcus Cooper <codekipper@gmail.com>
> >
> > Fixes: 21faaea1343f ("ASoC: sun4i-i2s: Add support for A83T")
> > Signed-off-by: Marcus Cooper <codekipper@gmail.com>
> > ---
>
> This doesn't apply against current code, please check and resend.
This patch is no longer valid and the fix has been done through the reverts,
BR,
CK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
