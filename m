Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F4341B2E3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:24:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iJsCrkIR8pRfVVYtTxEezBSM07jSFlCM3vN0J5RZyiU=; b=u0786YFiszezde
	ALzOqF8dC9+Q5Je91UNj3ZWJeVBWknf7peN0k/8sVd+Zd5cg1zyZFa2qwfR2cgKrIEQprzKo9wd8Y
	wGUBD4Nn3+dPhtvE3B8itJRcvYfdrXRqQXwhArv/DWKBmBlDlmDls2zWeN/TqIY5/Lr0MXQRYkLO5
	j++hCCszprgkPjANMhJrr/4EdzBDLWm1WdXSlObwrlcaZaD/3WR2tT0dnzcCD996e+EZyLZBz3XAC
	1AsA7mjOYgsuJjzHWCxk3bTMEE3lKkyQgOUHVTZ30Yw83oja/NJmvGNPx2zw5I1vJ1Z0o51b53prX
	ea0pmr45PlahX2qSCMaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwd9-0003FM-VX; Tue, 21 Apr 2020 17:24:19 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwcw-0003EC-SM
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:24:09 +0000
Received: by mail-ej1-x641.google.com with SMTP id n4so11597246ejs.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 10:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1W3PglCbU+VRJOx26t9wE7ivGuB2QpnMU2YOdNm+Jzg=;
 b=r6bzeb1Q5G0VunXAHq8mF0eYNzq3cn0foazV3UN4f9FJQVmHm52Mqw/AXxheXIrTKO
 22yvilhk7u6SflG2fv3IjC4uuJCLhii+qTxMRXI/z2qYYYuijaMmPO4+AJLPAzE6bS/M
 ber1yR/AlbVzENt2BPDZQ2zNBSF55LtDX0SPGsge1CUbuhiwNlIp7mVATRssrypgV9GQ
 UdrtKoLXzxN7WwUIYr3N2AC9tUrSZLuA1gSa/R9JPHJEUl9nSp+T4ADPmVlUAjKEDM5L
 r3YFpAk133SAfYjaA+49ilfgw/a6v69xm3sKtxaSJRmu7+uUY2NAMxKYSamuQIm/As/Y
 nW8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1W3PglCbU+VRJOx26t9wE7ivGuB2QpnMU2YOdNm+Jzg=;
 b=UhgDWhtBIO/Sxf80mB+Ly2rdFo1eJVgyB4KGjZ0UzeqYhfCe/+TFqLI15jtN0/UwWY
 Mm/XuyfXOJUCWMb8uXODDWEQ2ftc9nIE3qCYkhRxXflI6LYjMm2vnVoEa2Nj5NuZs4L5
 ycud59fNfJ1+0K08hCVPnt/NJ13YxXDzADHOG8hw1ZEtDbi2xoKHpHdVB8w8PpO3dJag
 DTf+E01TNNHeNEGDiiHHQU4u4Y6/jKbV5MarSr9FJu0ORUguo4hEG6Pie8amVxqKg1H7
 98TkxYfvljh9ujoudb4YpL9eUHMQ1nDUukBlVLBuRTHIoaFxqEAB5k4eSQ2mU9D0Hx33
 6edw==
X-Gm-Message-State: AGi0PuYk1uaXKoZ04o3La1JnwuWzHf1TGAcd4IV3YJLw4zPh7iR8CgmT
 CZkCg8JbPzskygbR5hw9hKl8AdEHQo7mspb9D0+yHA==
X-Google-Smtp-Source: APiQypL13LdRmQ1m2Z66qNUe0XHNSa5D8tNS1JsnYDeuhkI6hxd1Kjbs4h40veMRno5tls0HrbBJ/q72mmsriss1Izg=
X-Received: by 2002:a17:906:2792:: with SMTP id
 j18mr17137875ejc.215.1587489845147; 
 Tue, 21 Apr 2020 10:24:05 -0700 (PDT)
MIME-Version: 1.0
References: <20200415201420.15958-1-mike.leach@linaro.org>
 <20200417021113.GB5426@leoy-ThinkPad-X240s>
 <CANLsYkzx_DeXcJ_dBju_OWWRiREAqzG6opeQAuXf5gTsdgZtQQ@mail.gmail.com>
In-Reply-To: <CANLsYkzx_DeXcJ_dBju_OWWRiREAqzG6opeQAuXf5gTsdgZtQQ@mail.gmail.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Tue, 21 Apr 2020 18:23:54 +0100
Message-ID: <CAJ9a7Vj-P_b46nVpzWumWQ3TshWa08dNOvoZ7Uaq8Vn2WiL11w@mail.gmail.com>
Subject: Re: [PATCH] perf: cs-etm: Update to build with latest opencsd version.
To: Mathieu Poirier <mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_102407_435964_A862400A 
X-CRM114-Status: GOOD (  25.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 Leo Yan <leo.yan@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Mathieu, Leo.

Agreed - I'll fix up to use only the latest

Thanks

Mike

On Tue, 21 Apr 2020 at 17:52, Mathieu Poirier
<mathieu.poirier@linaro.org> wrote:
>
> On Thu, 16 Apr 2020 at 20:11, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > Hi Mike,
> >
> > On Wed, Apr 15, 2020 at 09:14:20PM +0100, Mike Leach wrote:
> > > OpenCSD version v0.14.0 adds in a new output element. This is represented
> > > by a new value in the generic element type enum, which must be added to
> > > the handling code in perf cs-etm-decoder to prevent build errors due to
> > > build options on the perf project.
> > >
> > > This element is not currently used by the perf decoder.
> > >
> > > Tested on Linux 5.7-rc1.
> > >
> > > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > > ---
> > >  tools/perf/util/cs-etm-decoder/cs-etm-decoder.c | 4 ++++
> > >  1 file changed, 4 insertions(+)
> > >
> > > diff --git a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > > index cd92a99eb89d..da4737cbc2ab 100644
> > > --- a/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > > +++ b/tools/perf/util/cs-etm-decoder/cs-etm-decoder.c
> > > @@ -564,6 +564,10 @@ static ocsd_datapath_resp_t cs_etm_decoder__gen_trace_elem_printer(
> > >               resp = cs_etm_decoder__set_tid(etmq, packet_queue,
> > >                                              elem, trace_chan_id);
> > >               break;
> > > +     /* Unused packet types */
> > > +#if OCSD_VER_NUM >= 0x0E00
> > > +     case OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH:
> > > +#endif
> >
> > I don't think use macros to distinguish OpenCSD version number is a
> > good idea, this will get more and more code to checking version number
> > if later have more these kinds improvement and finally it's hard to
> > maintain.
>
> I agree.
>
> >
> > Sugget just simply add the new case for
> > OCSD_GEN_TRC_ELEM_I_RANGE_NOPATH, considering if user uses an old version
> > OpenCSD and doesn't output this new element, the new added case doesn't
> > introduce issue for old OpenCSD lib.
> >
> > Futhermore, suggest to change the code in
> > tools/build/feature/test-libopencsd.c, so can reflect the kernel 5.7
> > to require OpenCSD v0.14.0 or later version when build perf.
>
> As Leo pointed out, I think we should just continue dealing with new
> versions of the library in test-libopencsd.c.
>
> >
> > Thanks,
> > Leo
> >
> > >       case OCSD_GEN_TRC_ELEM_ADDR_NACC:
> > >       case OCSD_GEN_TRC_ELEM_CYCLE_COUNT:
> > >       case OCSD_GEN_TRC_ELEM_ADDR_UNKNOWN:
> > > --
> > > 2.17.1
> > >
> > > _______________________________________________
> > > CoreSight mailing list
> > > CoreSight@lists.linaro.org
> > > https://lists.linaro.org/mailman/listinfo/coresight



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
