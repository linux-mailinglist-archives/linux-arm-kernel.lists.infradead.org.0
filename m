Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F75139037
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 12:36:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pn/A0QoNOi4rkF6m3cRbXBz7LMb+l/2rHEYO8jcNAZE=; b=YmbPmmJ1rykyJX
	Pd5ZJi2bOONeNaKGUuoDKS+AkJC95qaKfA9BmQqoMeLz/2DrzLoBrWlS/CxdLjLBHv90GyixOYu5f
	Z8MccBv//u9YH9ehJaGcWzRcnX4fwYqHZ7Q2LuUZKJGwg2lWwM8WERyql0yQIpgzMNyVz60PgsFhv
	xk8Cixonxo04iHsW0c9EkktDkNflmERvEl+uKhuSxJNE8EFCz5gPY/+dVcL5RDAIxqgS7R4GBAihp
	6bll+txxVR6VMv4qNDoA874fXyGCfTmUtAiA5JVDg0uzrZ5Wl6TQhwXW+SpLxupji6nFpYaGExxfs
	LMAI5mFfrMpahmPMrhzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqy1a-0005CY-WE; Mon, 13 Jan 2020 11:36:51 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqy1S-0005Ax-3F
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 11:36:43 +0000
Received: from mail-qt1-f174.google.com ([209.85.160.174]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N1Ofr-1jpIcR3Hul-012rU1 for <linux-arm-kernel@lists.infradead.org>; Mon,
 13 Jan 2020 12:36:36 +0100
Received: by mail-qt1-f174.google.com with SMTP id w47so8777009qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 03:36:35 -0800 (PST)
X-Gm-Message-State: APjAAAUFIIwaTY33Q81Cygo/6A1RfJzhDwhM3m2K/lRCme4J47gGzm9M
 bMpUQeOtISVuWFm0yvEgGrPX+o9b6XPMX+dy6Ks=
X-Google-Smtp-Source: APXvYqy4d5Y865StavZXLM6RVQnqg1jOobhsOc+SKK7Ta7Xbx6KIewCh7Nm3l9DGq6gktI9KWSqh+RU8fwyhDyVDD2g=
X-Received: by 2002:ac8:47d3:: with SMTP id d19mr13346118qtr.142.1578915394643; 
 Mon, 13 Jan 2020 03:36:34 -0800 (PST)
MIME-Version: 1.0
References: <3f5567ec928e20963d729350e6d674c4acb0c7a0.1578648530.git.viresh.kumar@linaro.org>
 <CAK8P3a1MLyP4ooyEDiBF1fE0BJGocgDmO1f5Qrvn_W5eqahz8g@mail.gmail.com>
 <20200113064156.lt3xxpzygattz3he@vireshk-i7>
In-Reply-To: <20200113064156.lt3xxpzygattz3he@vireshk-i7>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 13 Jan 2020 12:36:18 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
Message-ID: <CAK8P3a2u6s4MAM_9bOqSt5NwVc4XrXs9W36tp-7rWWTXx0+pRg@mail.gmail.com>
Subject: Re: [PATCH V2] firmware: arm_scmi: Make scmi core independent of
 transport type
To: Viresh Kumar <viresh.kumar@linaro.org>
X-Provags-ID: V03:K1:Tgpv592JoZa8KhPoyQkYiNX7qWpb0xaKeYxPPNgtODeseWH/wyR
 I0cNVHdOVKlBWg8WaJ3zoasimam92gwDJri4Ntmz6sp/JrDV4Nsibw8WIkXWwTqbIgkLHZy
 pW3mDPzEiNClJr/CCMmzvt/F1K46EoH5j/llS/ICanF0zr2+JHZ831LhApipBz1QYxMk7Qz
 U6K3a+myFl36ppeZ4mU9g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:3WIuvaXmAZg=:9LMRtcntZH21S/HhzOIYSk
 +/KQK3pFQT3LR2sZM6D/Geb5EG9R6A2kEDiawKKbcWWEgoPVW76Ga9Gnim5kT+IWzrNXh3vJu
 rarv8brx5Y7q0Aiw0bPexTdh9mcOn8qPGWfYKVL/VBjMJfnmzmdhR1DSItSRY+ug4RG4ioagi
 ks3XRF/PQ+ifTZHfYGDFzct0Fv8phLXYQh28oFicDO/enoXsSWWHb0hEVbs2qIVwp4U4mt+Zg
 MsOHlcd/itNx85CeLbsQ5RxmH9mZYZhaJpAT0g/oi2SGPrC4dAcdZzLe7jf2DE4Thj3lDPYk5
 j+Q/QvH0tfBHKdJ+YViTuBhwasw1f798sPOxCOhRUx9RGYihy/yf5btepCYqDCyRXN8PUAMUR
 HlMge04zbiWs27Qu7oNHvzQ2vkhsAFKGW96QDkj6goSE5A3Zsty2J/lh9NamR9usxaG1sNpv3
 Bap7IquguV3Dtwq7fKLA0qB8sJj8pjXFsCuKf7lmPqr2glp8nv2s1Rle7wl5eyBquzWOERYwy
 8bBjlQf7YzN8+lOkwWmcsi8DjtQdJDWBtJEn/FJXNHPbM9uH9G/4eil7i8tC8ykU2muuRz5Bi
 Za5wK2sYxLrh7VQsXDYwFxfmAGaCtNSMTUB4fMOLZsFwME+fTFLq3m38HG43JqAVQXkf7fp1g
 3lNwmyeZYeR2nIsrneJIYdK1f5s83yNqBL5SqwQRLpnXv5/BszhhT7sKQAWB1j+VG13vYp4bZ
 5ZKL0uh7N84FjQk81lJXInkd3oSVD94pqq2y/BPz5V3D1cdYs6DbJW8kSmkEw+dM6EwURjPhF
 iAPT8wxFJg4mh1UHJRZb+mQh2cxWwLG2Ueek24dEgEU+qzs/5N4YJoMBczGCpcI39IfcxGcXo
 vLA9KzKZsLodx2BGAXdA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_033642_425330_919A5834 
X-CRM114-Status: GOOD (  16.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: peng.fan@nxp.com, Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 cristian.marussi@arm.com, Sudeep Holla <sudeep.holla@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 13, 2020 at 7:42 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> On 10-01-20, 12:15, Arnd Bergmann wrote:
> > On Fri, Jan 10, 2020 at 10:43 AM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> >
> > Simply dropping the __iomem isn't much better, now you get other
> > type mismatches.
>
> Right. So what exactly do you suggest I should do now? Drop __iomem
> from the structure's payload field but keep all local variables and
> function arguments with __iomem ?

> > > +struct scmi_chan_info {
> > > +       void *payload;
> > > +       struct device *dev;
> > > +       struct scmi_handle *handle;
> > > +       void *transport_info;
> > > +};
> >
> > Maybe you can wrap the scmi_chan_info inside of another
> > structure that contains  the payload pointer, and use container_of
> > to convert between them?
>
> We don't need to convert between the two of them, isn't it ? Are you
> referring some other field here ?

> > It's not obvious which parts of the structure should be shared and
> > which are transport specific.
>
> All transport specific information is kept in the transport specific
> structure which is saved here in the transport_info field. Is there
> something else that isn't clear ?

To answer all three, what I meant is that the payload pointer appears
to be transport specific and should not be part of the common
structure if there is generic way to access it.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
