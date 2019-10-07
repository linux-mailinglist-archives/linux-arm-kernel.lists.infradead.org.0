Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16987CDEF2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 12:15:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BYbqVL5pCh/kgQgvfY3R2SGMx2/GKOnbUpetc5Hph7M=; b=qRA74VE/tNHlPK
	VzjYGAkoOsZQdK3ouI/GK/9Y4oysjGbJfCgOMJZTH1P2he9KeVM75Dj0iiPGmaQNyhpVVHkESd5jB
	j28E+PFblZW5uaqgz1ZxVCmVEmre3qZt9VKMxPuBl4cjwCwEkKqcusSJLAe+pwsybp3FIXCwDgLNe
	ORmDTXln/PuSAvvoOXfe9ghCNyR+uV55Ay6hvIZRVL/etIPEMHRLW1x3GYHoVFSxlpfIeiY9g/yQ1
	E8+DeJF/R2HM2pOInMalxhAPkQkQZo5+TpK02FTDFCwSvMsk0gPgbPllT/Edzu1xXlM2wPOFP8Hnu
	2QKEtXWUkEmXWJOEU4pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHQ3T-0001qs-9I; Mon, 07 Oct 2019 10:15:51 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHQ3J-0001p7-U6
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 10:15:43 +0000
Received: by mail-qt1-x844.google.com with SMTP id m15so18368705qtq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 03:15:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TPPLQMuSu6DR9UAe1OhqK+m80xjV6LV1hWWVroNGqFA=;
 b=yB66vCs9Cik40sq835uj1MsY4wHAqv5W8JjN6PqW7YOH37xxQvXNWCYj41Pho4+PyR
 Y8DPckhhbr65rHf2nq0tuBTpSkDiSelP9Ho4vmy4RNWO/f36hfoiiAi/rKqbVx4PxHqI
 /aFTmZqUvm5vBF5P1HQSM4gD+dX0vfNdztWaw1JAzeanpTheKMOhh2JFMEQi13dSplrs
 qBvxjE7VsF3lNz/2fz/R6DcQQ3QuOmUMKjViFgerYx35CBcfWsCmiBehrtLh7ScyCuAf
 XhTUPuQvDaHL9Oht8yH+T0z4S7TWsiPlo6KbJQu85g9YSq8FQ5bo5vuxRpBTICJT+Ybn
 8Hog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TPPLQMuSu6DR9UAe1OhqK+m80xjV6LV1hWWVroNGqFA=;
 b=fqqiGX5h3RX5C/ikEd9lDe5fQ1Fhr27ZAy7g/sC/ALPh4zATtSa70b/sVsRUKBvMZ4
 +5Kusnaj4PRMgEM3GSPCKNI1lxxRTbrw54pIOlDNZDYm6JPkgw17mXy3dhJi5vwh2088
 qinklruV+BvbGJFgH31KHRbOiEju+1PzqZiZzHFdzIJIyZzInY8wUTkXroPRMxn8TxhD
 olNF8EsE5WhZTb4nCDFPkhYT9+YL0SDzm27rPb1/L9+P0TVWBnMsiIQFb5nRQJk9gBFD
 RDYIBpZbrTyvg7rNV1JdefLTXO9qEqWCV9QyZN7BnvpKOOKtr5yn35mzWX0lQvefpjfi
 yEUg==
X-Gm-Message-State: APjAAAXznxV/IcBKL3M2jSYqaGgrOq6MpIuzjDO3WDnRM+Fo1o0sOg3k
 tdl1g0fnKOppJuDmrlkSLTbTLO5rxzVSj1HUos1enw==
X-Google-Smtp-Source: APXvYqyZ4UyJ3t8dKx1SfpG2DFjuSl5vNOC9Zb/ShAXmbBH8Ty9mfsbxI21wvZIfUh7XqPmc4q6jEhWPHz5Zh8JLkxk=
X-Received: by 2002:aed:2a3b:: with SMTP id c56mr29991747qtd.343.1570443340311; 
 Mon, 07 Oct 2019 03:15:40 -0700 (PDT)
MIME-Version: 1.0
References: <b47ec7088aa4b07458519ab151de92df552a9302.1570101510.git.amit.kucheria@linaro.org>
 <20191003115154.6f2jgj3dnqsved2y@gilmour>
 <CAHLCerNoLyQ-e70=1VMPO_J_amA+-2vtHwfoUabo4dhUWj-H0A@mail.gmail.com>
 <20191007100535.6gp6b3h6ueyeln3b@gilmour>
In-Reply-To: <20191007100535.6gp6b3h6ueyeln3b@gilmour>
From: Amit Kucheria <amit.kucheria@linaro.org>
Date: Mon, 7 Oct 2019 15:45:29 +0530
Message-ID: <CAP245DXT=HL+m-LqoC25EBnOaPmF1pUW0fEZp6EZB-MdgOJoWw@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: media: Fixup Allwinner A10 CSI binding
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_031541_972001_4EA8DC7F 
X-CRM114-Status: GOOD (  15.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 lakml <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 7, 2019 at 3:35 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> On Sat, Oct 05, 2019 at 04:15:57PM +0530, Amit Kucheria wrote:
> > On Thu, Oct 3, 2019 at 5:22 PM Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > Hi,
> > >
> > > On Thu, Oct 03, 2019 at 04:52:24PM +0530, Amit Kucheria wrote:
> > > > This new binding fails dt_binding_check due to a typo. Fix it up.
> > > >
> > > > linux.git/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml: $id: path/filename 'arm/allwinner,sun4i-a10-csi.yaml' doesn't match actual filename
> > > > linux.git/Documentation/devicetree/bindings/Makefile:12: recipe for target 'Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts' failed
> > > > make[2]: *** [Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.example.dts] Error 1
> > > > make[2]: *** Waiting for unfinished jobs....
> > > > linux.git/Makefile:1284: recipe for target 'dt_binding_check' failed
> > > > make[1]: *** [dt_binding_check] Error 2
> > > >
> > > > Fixes: c5e8f4ccd7750 ("media: dt-bindings: media: Add Allwinner A10 CSI binding")
> > > > Signed-off-by: Amit Kucheria <amit.kucheria@linaro.org>
> > >
> > > Thanks for your patch.
> > >
> > > It has already been submitted though:
> > > https://lore.kernel.org/linux-arm-kernel/1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com/
> > >
> > > I'm not sure why it hasn't been applied yet though :/
> >
> > Perhaps a Fixes tag will allow more attention to it?
>
> I've added a fixes tag and merged it through the sunxi tree.
>
> Sorry for the time it took, and thanks for sending that fix!

Will it get merged for -rc2?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
