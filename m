Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD1A345C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:45:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H6NGU5Fb+qs+tQBpEM3Z5f7JBLdisZoyfq7kPv53x10=; b=lbHUzEAc/naty4
	YN+Ep797i66s4lPnDp4Yiwg4uIsrQ1LqjYYjiJ4l6Ly2ICXVrq0RYTTIAEKxBCTe6+yrgK5OYZKnT
	YMfC7saQNKrI2stP/8LBa1f0TbjzSm2k0AdvGm4MaHnPQFjPPK3X1c6IKRz2T0OFGygZaSV5ftalq
	1lwSOa0QymHIzpqzTY491iAJkfZ0AEjDUB8RHsF1kwPeagh4j4xwk0wjS+YCar6DofNwIK8M396wO
	I+k5Hq/dEqWhLmj+aH/ZImKJleXaqqVHGrUfRsFpKXhfkkPmyGyaGsQk7LwhTnkifjhEVV9ee65SZ
	QDn2edGOIYiVX4ozwY4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY7su-0000I1-5q; Tue, 04 Jun 2019 11:45:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY7sn-0000Gr-2i
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 11:45:38 +0000
Received: by mail-pl1-x644.google.com with SMTP id cl9so3141520plb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 04:45:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ROpXrP+r2OC9uJKtrd7VeU5I2GEkuLFi73TKRyEYr3w=;
 b=YbXtk1gZpPouwSYE2Vhs1oY1Y4f37CPgCl4rhCDKDXOACPNCfLr9np6wKfbnqxvNqK
 net1HG8o5wBQb4vNApxrOerpg8MX7Frcm0nkoJCRedOp4gIlsU8B+szPQLnyAp7uDFz6
 18a5z5D1t2cCXPLwVyjN57+1xoFuuaOeWrZS3QYEL6m6NSRbpHdyTtJVRsjz8hDvO7ay
 x4MfN3T0GXyhVOPDl8Cb4swrSICIbrgdMT9k5w6B73MKVGcGVf0T8Ojj0gm6GQdck4bi
 ehe9TCYVm49T6ewlmRPV9pTGt0imE7M4Hg2EyyudgsziWrwS3zmaj416nN50DFpNVxSV
 8gRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ROpXrP+r2OC9uJKtrd7VeU5I2GEkuLFi73TKRyEYr3w=;
 b=DYDk06GBiZZhgQvHHD3vsxjvZNvZUfqqMZTA6HD2XHiXsfEnsOcke60+k5CkCcDwxN
 AMeRebaXBRFGFiEg+P8bMdAdgN7pIk4hXzIbW4z1d+GapTVjUngVXDP9g4IyVfyCHgZS
 l+NbiiIl0bbcH7DmC0TFWU+ob0lK1LB7385E0JFnxQlyoDbZELnDTldkwiIPIg86F1vn
 BeW3HZ+YeFI9nFGWhzbIOGjSN02G1cCs5j6d0gej4dD3cYhTtnRqPown3HX94vCSRIRX
 Ti0htvLFROaBeFY7lkeIoDGMXcSsIsSljL7D/Pm0QYF0YCDN2KKeIVl8i+cSBAZv7e+v
 1gfw==
X-Gm-Message-State: APjAAAUXDg6ZGPEPT/mgGrKfg2p/LAIA8e0JZ1/UdZPlISEe7tYzU5hu
 3Ci/if1bnoje1DlnAic+3BGaWJQr2R0/67wk+1gDqQXLN0I=
X-Google-Smtp-Source: APXvYqw/MEeiL2bhH+9bBygV1lo6Im71uAjcUSVWx84fFkrTwjlzF36BIb4PZCfj0/vMKrfmiVx/F/2QMSAp/3q5QEs=
X-Received: by 2002:a17:902:8609:: with SMTP id
 f9mr33680584plo.252.1559648735444; 
 Tue, 04 Jun 2019 04:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
 <097bc300a5c6554ca6fd1886421bb2e0adb03420.1559580831.git.andreyknvl@google.com>
 <8ff5b0ff-849a-1e0b-18da-ccb5be85dd2b@oracle.com>
 <CAAeHK+xX2538e674Pz25unkdFPCO_SH0pFwFu=8+DS7RzfYnLQ@mail.gmail.com>
 <f6711d31-e52c-473a-d7ad-b2d63131d7a5@oracle.com>
 <20190603172916.GA5390@infradead.org>
 <7a687a26-fc3e-2caa-1d6a-464f1f7e684c@oracle.com>
In-Reply-To: <7a687a26-fc3e-2caa-1d6a-464f1f7e684c@oracle.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 4 Jun 2019 13:45:24 +0200
Message-ID: <CAAeHK+wccK1upfOWxNbZBR0BUWT23VFUFEqRTEp3H+8hXN8yzw@mail.gmail.com>
Subject: Re: [PATCH v16 01/16] uaccess: add untagged_addr definition for other
 arches
To: Khalid Aziz <khalid.aziz@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_044537_116877_D11E6581 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 3, 2019 at 8:17 PM Khalid Aziz <khalid.aziz@oracle.com> wrote:
>
> On 6/3/19 11:29 AM, Christoph Hellwig wrote:
> > On Mon, Jun 03, 2019 at 11:24:35AM -0600, Khalid Aziz wrote:
> >> On 6/3/19 11:06 AM, Andrey Konovalov wrote:
> >>> On Mon, Jun 3, 2019 at 7:04 PM Khalid Aziz <khalid.aziz@oracle.com> wrote:
> >>>> Andrey,
> >>>>
> >>>> This patch has now become part of the other patch series Chris Hellwig
> >>>> has sent out -
> >>>> <https://lore.kernel.org/lkml/20190601074959.14036-1-hch@lst.de/>. Can
> >>>> you coordinate with that patch series?
> >>>
> >>> Hi!
> >>>
> >>> Yes, I've seen it. How should I coordinate? Rebase this series on top
> >>> of that one?
> >>
> >> That would be one way to do it. Better yet, separate this patch from
> >> both patch series, make it standalone and then rebase the two patch
> >> series on top of it.
> >
> > I think easiest would be to just ask Linus if he could make an exception
> > and include this trivial prep patch in 5.2-rc.
> >
>
> Andrey,
>
> Would you mind updating the commit log to make it not arm64 specific and
> sending this patch out by itself. We can then ask Linus if he can
> include just this patch in the next rc.

Sure! Just sent it out.

>
> Thanks,
> Khalid
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
