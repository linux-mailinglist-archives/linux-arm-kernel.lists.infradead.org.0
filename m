Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7333F11CB25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 11:42:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HAI3gUH0pbZ52OXaiadx4IRfWILezMZ1DwmpkQARoBc=; b=Y9h7c5CP1Qauef
	behgIBC5+Zls51UrQbXJIn2Tn88O+HBKSXXxup/6hbo3S1UOPkLLbrpKwxaYCtZFFBF+3OWB0x7fZ
	jHKD7u3/cS0NiBjIE/AhwmHI/kAuhTn20qk/RR6ZelV6b0FNcGiQ+m4h8Nocyjy10Iu0TnBslU0t7
	gTVBUc79I+ZVWhhij/HGRmwlOpTHPs1IeccE20YxUu53ymO5Qe+dyZxzc1zlDPgvcHx1sGfBOFcTS
	9/yU4waDkox1IOYZw+vevwdePVGRpwWg//E+ut8uN9rh7GAWjMYX+LW4uczIBuBacsGNW12SRgsnW
	UgaHoQ1X/hSPj4TofR9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifLuy-0004iq-Vs; Thu, 12 Dec 2019 10:42:01 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifLup-0004eh-AV
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 10:41:52 +0000
Received: from mail-qt1-f172.google.com ([209.85.160.172]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mo7eX-1hv1nj2fk3-00pfHH for <linux-arm-kernel@lists.infradead.org>; Thu,
 12 Dec 2019 11:41:48 +0100
Received: by mail-qt1-f172.google.com with SMTP id k11so1883884qtm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 02:41:48 -0800 (PST)
X-Gm-Message-State: APjAAAXFKkG3OdKk/U57VqQjdU7HuPTctFJr+YLNnBQcTMej7yF5XEB1
 DKWbUG6eg96J+DXuI85SxhvyjlCR7eNGa/6ZbRk=
X-Google-Smtp-Source: APXvYqx1qrhJ+ZLEtmXG5NHyXLPObQKIYvH94tn9l2YlTaR7V4qRxqgCwC/Mys/F8s6u6Mb1U7HeaoE+R2W7PWRDd0c=
X-Received: by 2002:ac8:3a27:: with SMTP id w36mr6752546qte.204.1576147307532; 
 Thu, 12 Dec 2019 02:41:47 -0800 (PST)
MIME-Version: 1.0
References: <20191211204306.1207817-1-arnd@arndb.de>
 <20191211204306.1207817-2-arnd@arndb.de>
 <20191212101654.GA12950@willie-the-truck>
In-Reply-To: <20191212101654.GA12950@willie-the-truck>
From: Arnd Bergmann <arnd@arndb.de>
Date: Thu, 12 Dec 2019 11:41:31 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2BrURQ=w0ux1v+76mANZhqpxeZhdT4u7-_w16zrssDXQ@mail.gmail.com>
Message-ID: <CAK8P3a2BrURQ=w0ux1v+76mANZhqpxeZhdT4u7-_w16zrssDXQ@mail.gmail.com>
Subject: Re: [PATCH 01/24] compat: ARM64: always include asm-generic/compat.h
To: Will Deacon <will@kernel.org>
X-Provags-ID: V03:K1:qGQGFDPB0wV73ACMJl/Esc/ir4046vYl9Bu8S3HQsURtByIs9qj
 5LyEOb98q82SKfKNcdrEHf6fxQiEC+ADFZksmFDNgGo1Y3yt8Whe15JvIPbSjWiiAIw/EH6
 llXLz9VGdRjCy/uPRVpV96Y7g9aHoDJO6X1R3PUxCz7LVpEYpG/vT+VHzLNWb94sAoqDZdQ
 rXWkE5LtmyzTIltNdLmxA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:S0t9s80Dm0w=:oYjvFrnvgg4tS9EZ2bwtDZ
 CqzpaxKCI4zDjrTYPDbgrB+t2k7bNkX/9nERm1I4NwfURUXK0csw9nXwXFIHkBfYdOfq1RqWB
 KQXFjihtbXaH/megtW+0CgYov0SjhmeP94Xy2QOw/TxLz5Kd7Yn+LqVl7DHjfWq2NT3yFMrG1
 2KN5tNCBL+sGn49IzYJEV3MbxjRjTjyohdwJsk+ASe/R5NDbQJtCtageLyBLqZ6bV8WIFUtR8
 WP5wNuYFLozkfEzDeOyg6iz5jRfi8ktJkofT9+8CMKJfuWUEMDirnWBWnzfuZ4zsvQcMt51EZ
 3MKUCK+Fv8h9rwzH/U+moyAjcx9L15vUtEGySU06sNvBBBJAYB40xNWj+e4WjjPLMnJadSmMi
 ep3tigZsKTjYls8DOsAPte/dJzANU1w2ECZwYl5ZlSFXSUDrEKKuEb9OR9eNjmVB1eYK12ZBn
 KkNhBTMMJIo8odDTUmDEnjOaP4m/TdSgszVqt74RMkHm4TCq0gnbMl7jxRtJmgI8mM1Hr1FWP
 J0Uoci5sKW7NVgNJW180K7XLAZfjwsejBWSV0E0pNNTS7l/SKV4rC5/cT7DDdWh5kOiQKuF7g
 RMMM65sB+mz+PLlPHo6DIrCV+F0VtQ/1ionsRziR5HuBa8r5TgBM+gIrCOWBcazbrNxXesqH3
 O/wgTD0M4Z+aSb/He1Rvmq909lzsY9y5TzWnO9dCDmeI35RLrhBY6w5fDnJeRR02mw1zDsn/V
 Y3INWsq7pFEqNRemn312K4l6Nd7FjuOU0l7QGuN2bbChlS9p9BCwbffZf+hXDriEoMst7XLdC
 kw+G+m3I+m3LncPubQ0/DoD82/H4e+TGvE5i0exNgWLOsDZCHNVvmBJXdaPV5FRDAOARbxBBU
 EFXqG5EqdN2+J0qPNN+w==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_024151_661275_8407A75F 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 y2038 Mailman List <y2038@lists.linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 11:17 AM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Dec 11, 2019 at 09:42:35PM +0100, Arnd Bergmann wrote:
> > In order to use compat_* type defininitions in device drivers
> > outside of CONFIG_COMPAT, move the inclusion of asm-generic/compat.h
> > ahead of the #ifdef.
> >
> > All other architectures already do this.
> >
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  arch/arm64/include/asm/compat.h | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
>
> Acked-by: Will Deacon <will@kernel.org>

Thanks!

> (Please let me know if you'd prefer this patch to be routed via the arm64
> tree).

No, it needs to stay together with patch 02/24. The later patches in the
series are independent of those two though.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
