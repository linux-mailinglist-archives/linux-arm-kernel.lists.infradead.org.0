Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD9C49B29
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:47:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t7cBQfDiWp9HM/2mE96T7apI1iNugTDXUMnobESna+M=; b=RcjJKOE6256Pfi
	RoP1z/LzmOU8UmjJbAeN2eTFlHSE/88BsOxS14n8smjkY89h2HnlUQk99tLoVB9MaUVBuUJdesCyL
	FNqinwQYVrwOyYKNKbvdJagq2wt57cQwgfVulFhNhYu3KSCaeUuLZYczD/E0NeVO/b/FvdFXwxFjD
	4eMyyBfhdwlUlVkyalTimPYXvR3k/WdFXG5n4E292QZ2Fzx+v2OLN94D6xiooNOgaNVUIRJNvVosO
	ewmoORvGycMLwTa05ipMJLt2H8ve16j4Mwbe3aaCUMCjUpeHg4CUxrgEwc1tDTTlJ35PcuAs7CJf5
	cJ6Mai3IkusnFk2y5pKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8q0-0007Dj-Js; Tue, 18 Jun 2019 07:47:28 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8pa-0006lb-25
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:47:03 +0000
Received: by mail-io1-xd43.google.com with SMTP id n5so27547323ioc.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Jun 2019 00:47:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vxKYkLgA5MVuzsXMSMGfzla77yJINMaSigfo4ssAuus=;
 b=RjIbAgrDl9/qI0Gii7VVzjfDkkA4UNrDQYVufYwYf/7w9vv+rUari1Sq1mvxZKpVXv
 HaIXkNWo7j6M5sCPdtYLiEMFaEoOc1VdJf/4sMfMFzLfEb8cS2GpcVmxlv3o5DgQrlIr
 /0peXvokP7Oc2S5VY+81T7ibHogSkES0k5wnA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vxKYkLgA5MVuzsXMSMGfzla77yJINMaSigfo4ssAuus=;
 b=lMuOoGlJJfxYERgqRH84DlIAzCzj8HsW7hU+Sye/RFQP6GeL7vLDJvNTPfBQH2jFzw
 b+gTtoDA1u9cUryjABqFNDul48nJ+Bfrv1bTsFrAi8cYPyfjYc9C7ez3c65gKHTZI0uj
 2xllDKurkv1pK6PJkyE83KSigG/HgFJ6y0Pv4uIJDzc8V/aeYm2j1/nOFrgmfHigv/8U
 Oymbu4sdBRFtsN4mkoZhMpIwFl8GHEjMrtc3FeK589guQNEdIete4CWa4GL51eoyQxU8
 p1hiD32ohewIEr0O0KAX9wqUP/4DcY5ijundGm87q8oCe2aW8/UrKpRU2rsUgy5O3dI4
 CPYw==
X-Gm-Message-State: APjAAAVP9XS250Px9Oh2kfkKIhQ98Mm+NF8iOuuSybp8ONP0T8VlO+dY
 j28CHNqM2Ns5kbGzWuSuPfLShiJ8Uj91rUDVQZWi5w==
X-Google-Smtp-Source: APXvYqycTbdlGgVagVEKSPFXn3d5LsyT9I6EZwTdqQk/dkFhmrBl6uOW3Kl4M+fU023lwzcVYQVx/JhGLarll+uzkVY=
X-Received: by 2002:a02:380c:: with SMTP id b12mr67109907jaa.85.1560844021305; 
 Tue, 18 Jun 2019 00:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
 <20190614164324.9427-6-jagan@amarulasolutions.com>
 <20190617114503.pclqsf6bo3ih47nt@flea>
 <CAGb2v66RU=m0iA9VoBiYbake+mDoiiGcd5gGGXvNCBjhY2n+Dw@mail.gmail.com>
 <CAMty3ZA0J+2fSRwX+tS-waJDLMyTOf6UY_1pHjXe0qOk5QuzrQ@mail.gmail.com>
 <CAGb2v64htYr+iRUnLx0hKkqCtYa0GbzZJEvb-ViyJFAYzU1sig@mail.gmail.com>
In-Reply-To: <CAGb2v64htYr+iRUnLx0hKkqCtYa0GbzZJEvb-ViyJFAYzU1sig@mail.gmail.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 18 Jun 2019 13:16:50 +0530
Message-ID: <CAMty3ZBDjNa+Sso4hmKxXOg_LT8giNYQAuJCgjZW8AeVQhAtyQ@mail.gmail.com>
Subject: Re: [linux-sunxi] Re: [PATCH v2 5/9] drm/sun4i: tcon_top: Register
 clock gates in probe
To: Chen-Yu Tsai <wens@csie.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_004702_122159_3857FACA 
X-CRM114-Status: GOOD (  23.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 12:53 PM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Tue, Jun 18, 2019 at 3:12 PM Jagan Teki <jagan@amarulasolutions.com> wrote:
> >
> > On Mon, Jun 17, 2019 at 6:31 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > >
> > > On Mon, Jun 17, 2019 at 7:45 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > >
> > > > On Fri, Jun 14, 2019 at 10:13:20PM +0530, Jagan Teki wrote:
> > > > > TCON TOP have clock gates for TV0, TV1, dsi and right
> > > > > now these are register during bind call.
> > > > >
> > > > > Of which, dsi clock gate would required during DPHY probe
> > > > > but same can miss to get since tcon top is not bound at
> > > > > that time.
> > > > >
> > > > > To solve, this circular dependency move the clock gate
> > > > > registration from bind to probe so-that DPHY can get the
> > > > > dsi gate clock on time.
> > > >
> > > > It's not really clear to me what the circular dependency is?
> > > >
> > > > if you have a chain that is:
> > > >
> > > > tcon-top +-> DSI
> > > >          +-> D-PHY
> > > >
> > > > There's no loop, right?
> > >
> > > Looking at how the DTSI patch structures things (without going into
> > > whether it is correct or accurate):
> > >
> > > The D-PHY is not part of the component graph. However it requests
> > > the DSI gate clock from the TCON-TOP.
> > >
> > > The TCON-TOP driver, in its current form, only registers the clocks
> > > it provides at component bind time. Thus the D-PHY can't successfully
> > > probe until the TCON-TOP has been bound.
> > >
> > > The DSI interface requires the D-PHY to bind. It will return -EPROBE_DEFER
> > > if it cannot request it. This in turn goes into the error path of
> > > component_bind_all, which unbinds all previous components.
> > >
> > > So it's actually
> > >
> > >     D-PHY -> TCON-TOP -> DSI
> > >       ^                   |
> > >       |--------------------
> > >
> > > I've not checked, but I suspect there's no possibility of having other
> > > drivers probe (to deal with deferred probing) within component_bind_all.
> > > Otherwise we shouldn't run into this weird circular dependency issue.
> > >
> > > So the question for Jagan is that is this indeed the case? Does this
> > > patch solve it, or at least work around it.
> >
> > Yes, this is what I was mentioned in initial version, since the "dsi"
> > gate in tcon top is registering during bind, the dphy of dsi
> > controller won't get the associated clock for "mod" so it is keep on
> > returning -EPROBE_DEFER. By moving the clock gate registration to
> > probe, everything bound as expected.
>
> I believe you failed to mention the DSI block, which is the part that
> completes the circular dependency. Don't expect others to have full
> awareness of the context. You have to provide it in your commit log.

I have mentioned DPHY and yes it is possible to give more information
will update in next version, no problem. thanks for mentioning that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
