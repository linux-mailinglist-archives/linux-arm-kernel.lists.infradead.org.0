Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B6519F652
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:02:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J2my44mifxbOuxH/8zkY533Up8uGLDp1a4ZXMeATQRw=; b=X5UG9No8Qw5gAw
	Q0/8YDaUTTwDv8n2sXp0m/Lm/Ao8rnkJGEMnDIl6q9jWYwUH6eYAck1GsKRZx9KvVe8FaJHRtLeSy
	y4mOo129nB1cDEjZbJpJQPxCflCTJcasPa+dPEiTfdcBwcltpnenijk8KkQoYzA74smYIw+NWsOmX
	rCQ13JAFe7G8D8/fVbQGzfl6k1XHjRz1wD3/xUAofB0I0SWjxxcymlRQ7h106h6dUuLyMjlQmvPZ3
	8IgfzsXd0EAbAZsCeSiSVaEhk8VR6BEUs9lJMQF2xUucRfRpFEK1iB6vs81cggw9xsjGu+zaOORcT
	xk3zA0pXCEhky3w+aBiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLROR-0005BP-KL; Mon, 06 Apr 2020 13:02:23 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLROH-0005A6-Eq
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:02:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1586178132;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=alQzJKmutYwoKzkIvRn5WsqF14XWobtKE/72gKkOeKM=;
 b=Ryd2rZUNy6tQCDdGZruNKODDHvbIrE9oJQaUGcQ9WrpFVUzxSMcQ8jk8SxbZonKVB35ees
 pxL6Jc5GsibRZSTCtA61Sj3yky57d8LUUDnv6V/SrmqdAXTXupqkjjbbJPQEwUx6zfxMEr
 xV1hd/yTqdlLHMoVIt36QRoxu1ZrGYI=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-296-3--nOO91PY6QyfEr-eb4dg-1; Mon, 06 Apr 2020 09:02:07 -0400
X-MC-Unique: 3--nOO91PY6QyfEr-eb4dg-1
Received: by mail-wm1-f72.google.com with SMTP id s15so4097889wmc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 06:02:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=VPjD/qOa5eohxkp3ciJYq8E962y8rH1Z+TEQ1dfdaNU=;
 b=Oh32bWRXlJHhkW3n04S59Z/1BssmNaMPiEaOYWZ0V4uTafyBl5qlk3XwefqyklEX/h
 FsPqqiQ1UKG/KZIxEyhz2IolXQDk5engesDaDuprcVivVySSt+N8514l9t6QsV7rSEKD
 yEwgpglcd4iXFZeh7aOHa2/DPpYJWOTFAT+7RhpS9AlI/m4OWOe/qnuXfokNk9vvtjwy
 U6hnSKIULjjPGiyhp/LIPE1vDJT6zLjSeht68OZoNQCo6+ORtZLwINXGFBF+ar9c2mKW
 mpou26noSNxEgW6a4lI3g0urEhOtg7V1+UwoqG1LB5ksRC6xmypcacvjCDQMyohXCwyW
 2xfA==
X-Gm-Message-State: AGi0PuYibYR9WF7RuhdYMBKPk5Rmwk9SEjl11aSlkhLxJwNlWm6fjUkD
 g2ef88bmIjnPdpdr3E1cG2Q4jI1fU/TXxHIAhh6HHFjg16yba+KStAnOhpnWsYsFTlPVN3Lqxop
 c/EYikGoyfX/g0Bjg6kR2gBWFGToOVG8FEao=
X-Received: by 2002:adf:a350:: with SMTP id d16mr23217856wrb.277.1586178126528; 
 Mon, 06 Apr 2020 06:02:06 -0700 (PDT)
X-Google-Smtp-Source: APiQypKzhJTMgG+3y4mdFbTRg4CPv7sYAgX9HM+UKNa2TYFJhIuv1nrWp08PsZCLMr3COjkc520wRg==
X-Received: by 2002:adf:a350:: with SMTP id d16mr23217808wrb.277.1586178126236; 
 Mon, 06 Apr 2020 06:02:06 -0700 (PDT)
Received: from redhat.com (bzq-79-176-51-222.red.bezeqint.net. [79.176.51.222])
 by smtp.gmail.com with ESMTPSA id n1sm13731659wrw.52.2020.04.06.06.02.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 06:02:05 -0700 (PDT)
Date: Mon, 6 Apr 2020 09:02:02 -0400
From: "Michael S. Tsirkin" <mst@redhat.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v2 2/2] vhost: disable for OABI
Message-ID: <20200406085707-mutt-send-email-mst@kernel.org>
References: <20200406121233.109889-1-mst@redhat.com>
 <20200406121233.109889-3-mst@redhat.com>
 <CAK8P3a1nce31itwMKbmXoNZh-Y68m3GX_WwzNiaBuk280VFh-Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a1nce31itwMKbmXoNZh-Y68m3GX_WwzNiaBuk280VFh-Q@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_060213_571189_D48BA57D 
X-CRM114-Status: GOOD (  12.17  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
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

On Mon, Apr 06, 2020 at 02:50:32PM +0200, Arnd Bergmann wrote:
> On Mon, Apr 6, 2020 at 2:12 PM Michael S. Tsirkin <mst@redhat.com> wrote:
> 
> >
> > +config VHOST_DPN
> > +       bool "VHOST dependencies"
> > +       depends on !ARM || AEABI
> > +       default y
> > +       help
> > +         Anything selecting VHOST or VHOST_RING must depend on VHOST_DPN.
> > +         This excludes the deprecated ARM ABI since that forces a 4 byte
> > +         alignment on all structs - incompatible with virtio spec requirements.
> > +
> 
> This should not be a user-visible option, so just make this 'def_bool
> !ARM || AEABI'
> 
>       Arnd

I like keeping some kind of hint around for when one tries to understand
why is a specific symbol visible.

-- 
MST


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
