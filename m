Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28DA01AE04E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4zLr2oYITJZm4l/jkJp3zIcsxJDrkb8dRYsxWkkUVo=; b=gtZjHDEMkw86ln
	KfSLzKy0eThW+7xZfKkmFihUuRVJl7a7KRNu0Y5sDeQJKERF7AZXo5AtvAyY0hs4PP+M1vQdUhXoG
	Ywys8NUTPJr2eegX+uGmIn+00DtdgubuDS8xMZIyzfiWyRzmDuAQrL6FeF8Po2I8Ge6TcmcWndwqc
	E1bEMn+lFQqesFoP4yK9qdTVjymv/QM2ZPpwmtXH2eMGVpn5uuir/tL+izuA1Spe9ZZJZKKSapO5l
	y3FDMaC2BViWzXj5Vo8nLTDSlzfv6BpekIFITzFiSthg8rXjlGts8E7qcK6cE+Uigx7HNXMDBwIBi
	rQJADD+ambYLrT9NMDrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPSSk-0000eW-MB; Fri, 17 Apr 2020 14:59:26 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPSSX-0000c3-Hn
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:59:15 +0000
Received: from mail-qv1-f44.google.com ([209.85.219.44]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M8hMt-1jKnkm1Z6P-004i8B for <linux-arm-kernel@lists.infradead.org>; Fri,
 17 Apr 2020 16:59:05 +0200
Received: by mail-qv1-f44.google.com with SMTP id v18so997074qvx.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 07:59:05 -0700 (PDT)
X-Gm-Message-State: AGi0PubvBXECZc+vIJ4DbE4YB1VlpnkQg9NN54PEftSnaZIX1wiq3mli
 S5SO3cu/ssryaQzy7mo7KDw5K+s+qIf76y0Nmwc=
X-Google-Smtp-Source: APiQypK6H2sYYYSZKAdSmmfa2MAlt0yW4aUSm3D2h6CUEgVPlGKHt4i/wv76jSZrzUssUtAvPLNxCQopFYs1B7Ph4Co=
X-Received: by 2002:ad4:4d50:: with SMTP id m16mr1321929qvm.222.1587135544234; 
 Fri, 17 Apr 2020 07:59:04 -0700 (PDT)
MIME-Version: 1.0
References: <20200408185834.434784-1-arnd@arndb.de>
 <20200408202421.GU25745@shell.armlinux.org.uk>
In-Reply-To: <20200408202421.GU25745@shell.armlinux.org.uk>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 17 Apr 2020 16:58:47 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0ZskJqBbTod-botFdx9fuWN9q5q25G1Gx=ky_Sg2cuHg@mail.gmail.com>
Message-ID: <CAK8P3a0ZskJqBbTod-botFdx9fuWN9q5q25G1Gx=ky_Sg2cuHg@mail.gmail.com>
Subject: Re: [PATCH] soc: fsl: dpio: avoid stack usage warning
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Provags-ID: V03:K1:B0dxWbPqyTicNdbU31juyp0CgPZvEw4lWJFQzV4wc/7knE70hGD
 gEooZnxNSGrcAV7i+YHji4hoaKZrCVV57zpcusMRIh8nPgyqkv14hTQZ3VA7PICno2+hZpi
 63nr8FJo2i8aM9CiWGoSeCGpB6uKH0oKfJSBe5kBIrKbN4LX3IqgEpVp5IeiH3R1ODD2JfD
 Z0lzL7S3VqAPwAt+CSVEw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:G280QJxXALQ=:BbFJCgCu0TwEkTq16t/lDX
 79EpSMXVI6vsK6C2xXECeYirogjpbTRp80A803DD5S6WDzJGPM+Iq/vacVOWkiCJ+qC2h6iae
 kemq1LTAsTzb9xVrSmAt/AkoXFSosd3eL9kB850QNcNBOyk5yqlpcRCE99TVJvH+YBEVio5rP
 mRGEUMXiqRAzdogWIeBHZrgyY4Qg1n60KaSxxSJoxdBPN6vDM9qolVOuh0tMIBVXHZr/pBivc
 DkxrfdfYDg1VdeVb0bbsjv+7qGYP72bTQ4XI6zBP00M3eMVFpq5Iv7wdkyYKA7U1I/ioPS9nF
 7gRQD6//7Dze+w99XFmleVAabavECTf5Fw4OXqxnTUDmbXQJ1scluVp9TN3KoSRGGN6JHL2EH
 hw2bFjP5ts0QW/y7Bf9UgnmJh3C6nGHSj8YBDXo1LR4ENTgpfDpTcoZCz6L9plQkkm3svZeD4
 9rmANZrdu4AXiiGQaUzapM3DEiCV7iRdmcqZqzSciLotunYIEkLzQR4VQtA+pqXpg5I70Nfpp
 ganogAdp77tG06bdKllwsy56R/rRwBawhHC0J5Waja8rQNMXPg6wFG5Nf3tVTNegHgDBCaRst
 9ION7omS64x+5LfP4pxDd1F7RSrtCv0mwcLXU5HsnIZSD/WsvscNoCWRm19cHhQiY26B77q6k
 LV8td5gRiBB1oaonU5uE+9bl4zi6H4/8HmgZmdrcqKTsHSJXbHa3oooigzqaCbQDA6a7b6tqw
 5f7E6jzAgEWiyTKSWIJ0dy5liUqF3sR8llOtrZ12sJAVKxK/j8Qnl766/eCUK8HxjGq6VLxKf
 Sabid0vU7CHWGZFMd746qlv7MdLeyj3uCnisc6E3MVLIHZpvQY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_075913_883668_114C44AF 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Roy Pledge <Roy.Pledge@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Youri Querry <youri.querry_1@nxp.com>, SoC Team <soc@kernel.org>,
 Ioana Ciornei <ioana.ciornei@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 8, 2020 at 10:24 PM Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
> On Wed, Apr 08, 2020 at 08:58:16PM +0200, Arnd Bergmann wrote:
> > -     int i;
> > -     struct qbman_eq_desc ed[32];
> > +     struct qbman_eq_desc *ed = kcalloc(sizeof(struct qbman_eq_desc), 32, GFP_KERNEL);
>
> I think you need to rearrange this to be more compliant with the coding
> style.

Ok, I've updated this now to move the allocation into a new line
and applied this and the other fsl patch into the arm/fixes
branch for v5.7.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
