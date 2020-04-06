Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F65119F6CA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:21:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zaH/vxMuLjtc41AH5pRl/Bbc5CVSjvDRg0AWMmohXdI=; b=LgEiWHKQVJTS25
	888hsl7Q72DcM+Ms7WWWrcpDxv7gA4wvEIcTn0dR0WzUXLAqrGKBXzkHCXRYBTzZS8igYTguYSCir
	xPD+yQHLpfbaF29kBxVkQXQ9KsSIooEuTITKx2Gvm6xfwTLBdj04Ib/eXDk54jbMPIZ4Uz2Ll8vle
	hHDMGp/uPSyE1fuBNs9vviMosJHv8hlIlVBQvY9EuZDYas4KluqasXm9Dt2C40XYl+opgvO0NPQGc
	EIaFP7k90NhO2gV1NbmvkFiT65vZel7m/6hCa+VaKMz16IgXj0BOxr1+1Egg+5agyvoK1bpwjMv0i
	0F4xAXLtOiNR9tjWz+TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRgw-0000wx-IW; Mon, 06 Apr 2020 13:21:30 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRgp-0000vL-3Z
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:21:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586179279;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=8/l+u68mjtbwHXpzMEw7Dyh8XU04DyaBrG7zHozWjJA=;
 b=MjUtKAsGw9b9HO1vsKJKXRrg4u8t40KJLkV4gI6YL9jj4SMlY8G/bcJaP/RHR+ZlzTjBZl
 NfCm/70uUVOFj7gHRCOoNq94TFNKbGBNvGM0MMNLkpF2QKPPbIdjAJyej6Q7Idv1MqMU6n
 ivSNgEcbas+1KTd4RbfhhH5Kifgr1oo=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-309-Uv9esNOyOtWagpuTAMiTow-1; Mon, 06 Apr 2020 09:21:15 -0400
X-MC-Unique: Uv9esNOyOtWagpuTAMiTow-1
Received: by mail-wm1-f70.google.com with SMTP id 2so4894614wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 06:21:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Dt00ToAjgq6odVjJUr2HynAfwKXr6ghEKV21ZUG8JdU=;
 b=F8lstkPTt4QduOF6IwpGdbIitc3aruraaD7ARwke2bUmA9Tzdb6Z7DN8FXybXJi7iN
 hyb8D36+eqGAmgdNYwShwkVpHoUjcDyprJw7Z+CzHNF7+TXpaiV03eErhuj+1Fs2Ef2s
 BWrcMVfr2M2I7WSlI2nUNLFEHG/IqLrcdE9RYTWcJXEZuBmjAPDVHTeoKThgPndUCOsp
 T7sjPfWChOKvn9ELZGXQcpvShW96jryh4JdMPEjtzjzUET0nVIQlbXQCsYaKGD2MOjSv
 FVhaDAIsCjkLl2V1jAdEdblicQE+/L5Fv59wA9sbUdN1l8Ni9/9y4cD5jP8QuKhn1aLL
 sCFg==
X-Gm-Message-State: AGi0Puaghu/AndlFo4Qm8ZceoE6tfIXf5IWyB7bZMAreYrydovpIrG2L
 HWHFiW/b2Ezk3QaD8JYNRq5B9pxd+5GRWZGo+XBy28QTk4WKfqMZB4e5iAZoD6IPnJu5EbjmjWe
 opTCEElw1p2MJAuw6XctYFo2Dq1PzKQF/AOM=
X-Received: by 2002:a5d:42c1:: with SMTP id t1mr11428308wrr.215.1586179274431; 
 Mon, 06 Apr 2020 06:21:14 -0700 (PDT)
X-Google-Smtp-Source: APiQypLTm0wN4Ob+KU8r6bjP+vUj5Sc5r+ElDJG7FGW/nVL32K8rRyDddIp810vWUMYetH05ffupWw==
X-Received: by 2002:a5d:42c1:: with SMTP id t1mr11428298wrr.215.1586179274273; 
 Mon, 06 Apr 2020 06:21:14 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id z11sm11162174wrv.58.2020.04.06.06.21.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 06:21:13 -0700 (PDT)
Date: Mon, 6 Apr 2020 09:21:10 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 2/2] vhost: disable for OABI
Message-ID: <20200406092056-mutt-send-email-mst@kernel.org>
References: <20200406121233.109889-1-mst@redhat.com>
 <20200406121233.109889-3-mst@redhat.com>
 <CAK8P3a1nce31itwMKbmXoNZh-Y68m3GX_WwzNiaBuk280VFh-Q@mail.gmail.com>
 <20200406085707-mutt-send-email-mst@kernel.org>
 <CAK8P3a1=-rhiMyAh6=6EwhxSmNnYaXR9NWhh+ZGh4Hh=U_gEuA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1=-rhiMyAh6=6EwhxSmNnYaXR9NWhh+ZGh4Hh=U_gEuA@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_062123_225331_AA3A1B36 
X-CRM114-Status: GOOD (  15.11  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Richard Earnshaw <Richard.Earnshaw@arm.com>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 kbuild test robot <lkp@intel.com>, kvm list <kvm@vger.kernel.org>,
 "christophe.lyon@st.com" <christophe.lyon@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jason Wang <jasowang@redhat.com>,
 "richard.henderson@linaro.org" <richard.henderson@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Sudeep Dutt <sudeep.dutt@intel.com>, Ashutosh Dixit <ashutosh.dixit@intel.com>,
 "daniel.santos@pobox.com" <daniel.santos@pobox.com>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 "David S. Miller" <davem@davemloft.net>, Networking <netdev@vger.kernel.org>,
 virtualization@lists.linux-foundation.org, Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 06, 2020 at 03:15:20PM +0200, Arnd Bergmann wrote:
> On Mon, Apr 6, 2020 at 3:02 PM Michael S. Tsirkin <mst@redhat.com> wrote:
> >
> > On Mon, Apr 06, 2020 at 02:50:32PM +0200, Arnd Bergmann wrote:
> > > On Mon, Apr 6, 2020 at 2:12 PM Michael S. Tsirkin <mst@redhat.com> wrote:
> > >
> > > >
> > > > +config VHOST_DPN
> > > > +       bool "VHOST dependencies"
> > > > +       depends on !ARM || AEABI
> > > > +       default y
> > > > +       help
> > > > +         Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
> > > > +         This excludes the deprecated ARM ABI since that forces a 4 byte
> > > > +         alignment on all structs - incompatible with virtio spec requirements.
> > > > +
> > >
> > > This should not be a user-visible option, so just make this 'def_bool
> > > !ARM || AEABI'
> > >
> >
> > I like keeping some kind of hint around for when one tries to understand
> > why is a specific symbol visible.
> 
> I meant you should remove the "VHOST dependencies" prompt, not the
> help text, which is certainly useful here. You can also use the three lines
> 
>      bool
>      depends on !ARM || AEABI
>      default y
> 
> in front of the help text, but those are equivalent to the one-line version
> I suggested.
> 
>      Arnd

Oh right. Good point. Thanks!

-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
