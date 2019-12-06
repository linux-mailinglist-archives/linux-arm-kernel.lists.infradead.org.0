Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D64941156A1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 18:40:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Upc3FE2wlzZ0XmN9WSK2Ydk8tWEqSgI092domMojpV8=; b=b1dVFWVTFvzsN8
	EgrG/onRurvsrlQoHg1UHTW8aLjb71rbp0Pp1dqq5s9120a2cb0xzQp1sxAHwtgr4bUjFB65bswvi
	T2k3cTR0kKftT/zv3AnWBhbGeQE8aMtNu/DPqU+w4i3oq3H/Cm76HAYBkZJ8xAoEmryy30u2pjF1L
	1JBwHLqrSTT47BZSbJqWN9sNuF0nM5tumuP/UPNAZjmCvG3l8h1nnouRNnenBOlUst7PSeFy9OWny
	5O9ALQTYxCM4mrLaC9MFspsUZ6bn7aed8iVr0NdJO4ov2+qhfrBpZWvOmnqwrEAAzBgUL3cJqUCQC
	14rsLJS4ST2N/XbPGrrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHa4-0003cG-9b; Fri, 06 Dec 2019 17:39:52 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHZu-0003bk-Du
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 17:39:44 +0000
Received: by mail-qt1-x844.google.com with SMTP id g17so1906102qtp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 09:39:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rvJbez3t1i6gr8sW7DfacyqP3hxyEs0+ty+IefO5wYc=;
 b=YQ+P0k1376rwyy3MBhYUhCp2SRitHFce3O8IugmZBj1pL9dPvREWJPn1d8zzQZAniw
 qDJzdjH9aC3MzUVBnDgyrpbm+sl3YifPM4EBevE6a7nvp4TzvqC6sCs3TdepvktZy2C9
 4ViYAsqTqbdCNqw6nw+4JEYDjGCmeBFU/LlO+oRO9Hrs2P+yzQkn7YkqeYlwePPbodXL
 O1HXKExMpXxbNaJyuF5Q9mWiegLSXXXpJiY/9rdlniiIBAZ+kHibGOhoGp1wwv2zUL7Q
 gzuTrHvBs90qrPMgQHKvcH/oe8e0jHjsJzW4BnC3nwW2gjWs2i/ghUAZVKBT3X9xE9L+
 9kjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rvJbez3t1i6gr8sW7DfacyqP3hxyEs0+ty+IefO5wYc=;
 b=DQOaFDcsQSsc2XOqR3dXSeH4KAD6E3Xig6VHnB0cu+dCVq7MLEoTvktBtJCWnKtYVj
 HzB1VClirt2ATC1Q0p1eX0xqvhAT4yXPr85w7N7ppzhtNbfHBKrftotSJynxzxg0WTTK
 hD6TfSm774X6RyaGa2Wf0FyhKA9t/JYd96jjoPJOzaqSn3tKHF1ssGMOew67FOz/4hWU
 Y2hO0XhtuL2+XScg9UdS+YA5/J4ghu+J0X6+KOlwN9ZPueH5LNE9IaGNeoB4DE/jR20f
 mB98NSrWDGRNwVTo7/tlhtJe4vdKnCdk2YW5BlqSJg2oZbIBm7/8rWJbKGICPYztMpgj
 slCA==
X-Gm-Message-State: APjAAAXTJOOSueKc+K/F7Dv1rIUcmS1D5lNJXSz/g6ZzNeDqCPFep2IW
 +PQpJmGQfPspLqMOITmg+9wCiX1xG87NoMr3XtTVJQ==
X-Google-Smtp-Source: APXvYqyHH54J9471sJiemYPbjSsd/iWk1KAbT0Z6XDcC/wDdzcfnGvRyl7sOz0RxbO5t9sO6YaaRCLtT96aXrWAGNcc=
X-Received: by 2002:ac8:41c3:: with SMTP id o3mr13647714qtm.88.1575653978018; 
 Fri, 06 Dec 2019 09:39:38 -0800 (PST)
MIME-Version: 1.0
References: <20191119231912.12768-1-mike.leach@linaro.org>
 <20191119231912.12768-14-mike.leach@linaro.org>
 <1076b0e3-6b50-7be9-0a25-cb003bd77674@arm.com>
In-Reply-To: <1076b0e3-6b50-7be9-0a25-cb003bd77674@arm.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 6 Dec 2019 17:39:27 +0000
Message-ID: <CAJ9a7VjUmDA6Sx2CQzttXnptSJDVhobiSj_8z5ez_SFMC7L14Q@mail.gmail.com>
Subject: Re: [PATCH v5 13/14] docs: coresight: Update documentation for
 CoreSight to cover CTI.
To: Suzuki Kuruppassery Poulose <suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_093942_604718_55960BBB 
X-CRM114-Status: GOOD (  22.36  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Coresight ML <coresight@lists.linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:DOCUMENTATION" <linux-doc@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mathieu, Suzuki,

Fixed per you suggestions.

Thanks

Mike

On Mon, 2 Dec 2019 at 10:43, Suzuki Kuruppassery Poulose
<suzuki.poulose@arm.com> wrote:
>
> On 19/11/2019 23:19, Mike Leach wrote:
> > Add new document covering CTI / CTM usage in CoreSight.
> >
> > Add section in coresight.rst introducing CTI and CTM modules with link
> > to new document.
> >
> > Signed-off-by: Mike Leach <mike.leach@linaro.org>
> > ---
> >   .../trace/coresight/coresight-ect.rst         | 200 ++++++++++++++++++
> >   Documentation/trace/coresight/coresight.rst   |  13 ++
> >   2 files changed, 213 insertions(+)
> >   create mode 100644 Documentation/trace/coresight/coresight-ect.rst
> >
> > diff --git a/Documentation/trace/coresight/coresight-ect.rst b/Documentation/trace/coresight/coresight-ect.rst
> > new file mode 100644
> > index 000000000000..6448cf910f20
> > --- /dev/null
> > +++ b/Documentation/trace/coresight/coresight-ect.rst
> > @@ -0,0 +1,200 @@
> > +=============================================
> > +CoreSight Embedded Cross Trigger (CTI & CTM).
> > +=============================================
> > +
> > +    :Author:   Mike Leach <mike.leach@linaro.org>
> > +    :Date:     November 2019
> > +
>
> ...
>
>
> > +
> > +Channels API Directory
> > +~~~~~~~~~~~~~~~~~~~~~~
> > +
> > +This provides an easy way to attach triggers to channels, without needing
> > +the multiple register operations that are required if manipluating the
> > +'regs' sub-dir elements directly.
> > +
> > +A number of files provide this API::
> > +
> > +   >$ ls ./cti_sys0/channels/
> > +   chan_clear         chan_inuse         chan_xtrigs_view      trigin_detach
> > +   chan_free          chan_pulse         chan_xtrigs_view_sel  trigout_attach
> > +   chan_gate_disable  chan_set           trig_filter_enable    trigout_detach
> > +   chan_gate_enable   chan_xtrigs_reset  trigin_attach         trigout_filtered
> > +
> > +Most access to these elements take the form::
> > +
> > +  echo <chan> [<trigger>] > /<device_path>/<operation>
> > +
> > +where the optional <trigger> is only needed for trigXX_attach | detach
> > +operations.
> > +
> > +e.g.::
> > +
> > +   >$ echo 0 1 > ./cti_sys0/channels/trigout_attach
> > +   >$ echo 0 > ./cti_sys0/channels/chan_set
> > +
> > +Attaches trigout(1) to channel(0), then activates channel(0) generating a
> > +set state on cti_sys0.trigout(1)
> > +
> > +
> > +*API operations*
> > +
> > +   * ``trigin_attach, trigout_attach``: Attach a channel to a trigger signal.
> > +   * ``trigin_detach, trigout_detach``: Detach a channel from a trigger signal.
> > +   * ``chan_set``: Set the channel - the set state will be propogated around
> > +     the CTM to other connected devices.
> > +   * ``chan_clear``: Clear the channel.
> > +   * ``chan_pulse``: Set the channel for a single CoreSight clock cycle.
> > +   * ``chan_gate_enable``: Write operation sets the CTI gate to propagate
> > +     (enable) the channel to other devices. This operation takes a channel
> > +     number. CTI gate is enabled for all channels by default at power up. Read
> > +     to list the currently enabled channels on the gate.
> > +   * ``chan_gate_disable``: Write channel number to disable gate for that
> > +     channel.
> > +   * ``chan_inuse``: Show the current channels attached to any signal
> > +   * ``chan_free``: Show channels with no attached signals.
> > +   * ``chan_xtrig_view``: write a channel number to select a channel to view,
> > +     read to show the cross triggers programmed for the selected channel.
> > +   * ``trig_filter_enable``: Defaults to enabled, disable to allow potentially
> > +     dangerous output signals to be set.
> > +   * ``trigout_filtered``: Trigger out signals that are prevented from being
> > +     set if filtering ``trig_filter_enable`` is enabled. One use is to prevent
> > +     accidental ``EDBGREQ`` signals stopping a core.
> > +   * ``chan_xtrigs_reset``: Write 1 to clear all channel / trigger programming.
> > +     Resets device hardware to default state.
> > +
> > +e.g.::
> > +
> > +   .../cti_sys0/channels# echo 2 1 > trigin_attach
> > +   .../cti_sys0/channels# echo 2 6 > trigout_attach
>
> minor nit: It may be a good idea to add a comment to describe what you
> are doing with the above operations, to avoid looking up and mapping it
> for someone looking it up. I am not too keen, but it is definitely
> helpful.
>
> > +   .../cti_sys0/channels# cat chan_free
> > +   0-1,3
> > +   .../cti_sys0/channels# cat chan_inuse
> > +   2
> > +   .../cti_sys0/channels# echo 2 > chan_xtrigs_view
> > +   .../cti_sys0/channels# cat chan_xtrigs_view
> > +   [2] IN: 1 OUT: 6
> > +   .../cti_sys0/# echo 1 > enable
> > +   .../cti_sys0/channels# echo 2 > chan_set
> > +   .../cti_sys0/channels# cat ../regs/choutstatus
> > +   0x4
> > +   .../cti_sys0/channels# cat ../regs/trigoutstatus
> > +   0x40
> > +   .../cti_sys0/channels# echo 2 > chan_clear
>
> > +   .../cti_sys0/channels# cat ../regs/trigoutstatus
> > +   0x0
> > +   .../cti_sys0/channels# cat ../regs/trigoutstatus
> > +   0x0
>
> nit: duplicate lines ?
>
> Otherwise:
>
> Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>



-- 
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
