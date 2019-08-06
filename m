Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5E1831C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 14:49:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:
	In-Reply-To:References:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gK7a9VSn3+9rLzxyy2DJ0pJRg9pXhWheBwKXUzv5YBU=; b=Xaf5QFxblYXhim
	2h6gbQIDeDVLmfA6Cdo0BgxwmfYrWA1SioHYEGS5uenpWy6w65vXYlgSrcz4knavWqFq8hYA857Nm
	dGbglKTYBPpu45DLBendpDsN4WjXM4dYWZdNrnB/tuLjCCDNHao9fp3khEDOmSZqQKEXd1xV1enjx
	4ZIqk+9daWrh4WCDFZoIb5H9tgD2FihApOE4P3uT+1jOIkbOFafudvBXtxFAV7itNaoCVA7zHiIEY
	DjC+Nfftv8u854rGWBof1blv56N0nblljx3BuNhr4TpyK1OeFRIhWtGncGET9LuX1kdtn+2hLK5R9
	KoxspjEc9pQ0jzuycEng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huyuT-000065-0w; Tue, 06 Aug 2019 12:49:49 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huyuC-00005X-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 12:49:33 +0000
Received: by mail-qk1-x741.google.com with SMTP id r6so62766579qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 05:49:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:references:in-reply-to:subject:date:message-id
 :mime-version:content-transfer-encoding:thread-index;
 bh=7byPiiK5LbNFSHUD/RXwnnSwZnBW+lYh4o4LD1o1MOg=;
 b=ChRRVTKqgdIIm939OMFfC46zsL1TLn1UTSgtUZwNgAnTBX1fg7a6dIW+r90DODQHRB
 11RgNLdXO+XDygagT3fDA+P1JMhvBTurdPVIlOvuEDPuR3D2Nq4QOTYNhzDAZNvnwHAP
 6GEduG2O7YZVOziVxZv0mrsqvtYPQTT9ktStLr0HTjVBKy+2isvn3geBIFtcSr8Tqr4i
 EOAGNsjD5+IFNRssKc1FXGgqHsPhCpF/51DkqGxMONoBikqO3VdtwRj25IPTauFiL1Mk
 dEdM0hlUuSxDJuZMFL1J4xtVpLVcJe/V+ramSm9n3NcWGk4GsWxOk8Ms0Uu7HZdTTPKj
 VAlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
 :message-id:mime-version:content-transfer-encoding:thread-index;
 bh=7byPiiK5LbNFSHUD/RXwnnSwZnBW+lYh4o4LD1o1MOg=;
 b=cmeBfhorrNL3k/WDF1GhSCDAETnZkd6R+8u/FEnbKeS5GZ4uGRyzqnE+OmyzqsiMum
 WITqa3f5aCQctz5hgc/RpbffkjEXVdoBsldSYYV4mGifAOuUjdnuljmwaeH6y1iC/N/4
 FU9pM7R+oYe3O51TK6LF/XsMqI2e0kh+L/WJaE8zfb66QrZnIgvAjNRnSrG5RnoKd+L9
 0NAisCV3cMxz/PhJwTE56fYROzHsuUMReDePj40zRfikW6Rzh6njfQvHfsSfHGRjVPBT
 OX2rBtGeqoqNaSYMicya1SoylNPerJVq8Pw8ZbMDafrFcycXlmA/2cjF6IIJL89EWGTV
 PDdg==
X-Gm-Message-State: APjAAAWMRNzM5ZGUF7dMIX+Xpm21efaC/bKxcW3a9qFlH6NGTWslFGRS
 oTE0/HJ9o05lTdWhuAp+CHvXhaha
X-Google-Smtp-Source: APXvYqyVIBof5hLoM9ISPOLBKwMFFmd7Zky+19gDRRAIjI9d1Cg7KjO1m58J99iVLNQ6FcblxyNqVA==
X-Received: by 2002:ae9:e84b:: with SMTP id a72mr3086764qkg.355.1565095771007; 
 Tue, 06 Aug 2019 05:49:31 -0700 (PDT)
Received: from GirolesWin7 (magopq1505w-lp140-01-70-26-203-177.dsl.bell.ca.
 [70.26.203.177])
 by smtp.gmail.com with ESMTPSA id m44sm46439977qtm.54.2019.08.06.05.49.29
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 06 Aug 2019 05:49:30 -0700 (PDT)
From: "Martin Ayotte" <martinayotte@gmail.com>
To: "'Chen-Yu Tsai'" <wens@csie.org>
References: <20190727210307.17607-1-sunil@medhas.org>
 <CAGb2v66S1+CSn=CYwZQOP8V+ZL+D9ayf6cvidzK5ENXOqKRGew@mail.gmail.com>
 <CAKQ8BtjLmhDgA8woY5NqaifODLUh_w_K4QYOUuqc4Six5Amerg@mail.gmail.com>
 <fd19b2e3-e340-f4fd-a320-1cfc45964f5b@medhas.org>
 <CAGb2v66w6y_0NLcT=WminsgK=QXpUPVnMWdCotMmgM1vgPByxw@mail.gmail.com>
 <de875c31-6cb3-8975-ac3d-de4ab3a851bd@medhas.org>
 <1955D9AD572C4F57A2D66B15EB8CF79C@GirolesWin7>
 <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
In-Reply-To: <CAGb2v67oT0OV9p+KffBDFGz5BN5zR7=DhYLStwkagY=TXkskQA@mail.gmail.com>
Subject: RE: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
 A64-OLinuXino
Date: Tue, 6 Aug 2019 08:49:29 -0400
Message-ID: <AD4CCAA0C22145CFB1E662CF924CB239@GirolesWin7>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdVMH7+hD/YxzuNMQJSFpJLyfaLIZQANY2YA
X-MIMEOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_054932_495270_EC56C435 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martinayotte[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: 'Maxime Ripard' <maxime.ripard@bootlin.com>,
 'Sunil Mohan Adapa' <sunil@medhas.org>,
 'linux-arm-kernel' <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Just to let you know : typo in my email still there...

-----Message d'origine-----
De=A0: Chen-Yu Tsai [mailto:wens@csie.org] =

Envoy=E9=A0: Tuesday, August 06, 2019 2:25 AM
=C0=A0: Martin Ayotte
Cc=A0: Sunil Mohan Adapa; Maxime Ripard; linux-arm-kernel
Objet=A0: Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
A64-OLinuXino

On Mon, Aug 5, 2019 at 8:58 PM Martin Ayotte <martinayotte@gmail.com> wrote:
>
> Fine for me too.
>
> Thanks .
>
> -----Message d'origine-----
> De : Sunil Mohan Adapa [mailto:sunil@medhas.org]
> Envoy=E9 : Monday, August 05, 2019 1:25 AM
> =C0 : Chen-Yu Tsai
> Cc : Maxime Ripard; Martin Ayotte; linux-arm-kernel
> Objet : Re: [PATCH v2] arm64: dts: allwinner: a64: Enable eMMC on
> A64-OLinuXino
>
> On 04/08/19 8:33 pm, Chen-Yu Tsai wrote:
> > On Fri, Aug 2, 2019 at 2:47 AM Sunil Mohan Adapa <sunil@medhas.org>
wrote:
> >>
> >> On 01/08/19 6:49 am, Martin Ayotte wrote:
> >>> If my SOB could help here, I don't mind since I've done the commit
> >>> more than a year ago for Armbian ...
> >>>
> >>> Signed-off-by: Martin Ayotte <martinayotte@gmai.com>
> >>> Tested-by: Martin Ayotte <martinayotte@gmai.com>
> >> gmai.com is likely a typo.
> >>
> >>> On Wed, Jul 31, 2019 at 10:42 PM Chen-Yu Tsai <wens@csie.org
> >>>
> >>>> Thanks. The patch looks good overall. The authorship is a little
> >>>> confusing though. If it was initially done by Martin (CC-ed), then
> >>>> he should be the author, and we should get his Signed-off-by if
> >>>> possible.
> >>
> >> Martin is indeed the original author of the patch. Thank you for
> reviewing.
> >
> > I'd like to apply this patch with Martin as the author, if that's OK
with
> you
> > both?
>
> That is completely okay with me.

Applied for 5.4.

I reordered the tags so they make more sense:

https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git/commit/?h=
=3Dsu
nxi/dt-for-5.4&id=3D0834887732df5af41b59b2e4d530fc1f5478965f


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
