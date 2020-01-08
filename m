Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808CA1349FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 19:00:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qrWh309jwQvEWZWJh4oPHej0VfVFZ2CR4JiSGjhpGIo=; b=Ul3w1xYtfj7mcp
	Dphz4T7WBx99/9J8amskvqv0637/Jg18QGb4ej9hrQIm0mkGoU/ZVJ019SUetPi4Y3u9/LHAPJ1TW
	CRkhfdvAaMdfg0nKYIbwegq7a4yqXlnSNN7XeDiM6VGtjoJVILoqHZLXOy87175rawn2y2vXAXxO3
	IufczMz6ChZ35PrxwiVEO/NCWjb7+ah9+2HOkKm3bpslc+3+esmI/6nT+bcOpzgrfiaj8Lkk2Lw3z
	ytEeyxQnN5kto11DIoW3qx34rOfS+c6y3NpW6lb3E8Ov+7KR6XNOXRA83KDux8Lc30I3Edl9UaNMw
	/COhoowol39rO0INofWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFd0-0005Tx-Fs; Wed, 08 Jan 2020 18:00:22 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFch-0004y9-Uh
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:00:06 +0000
Received: by mail-ed1-x544.google.com with SMTP id bx28so3292974edb.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 10:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qIJ0Kicl6j4bwXIU5AzbCNCUfZFKVKAfMopkDEnB5BY=;
 b=k1icy9J+CME6Q3G9G6W6/Wv1Th4TizSEtmEO2uqDn9/R2gnG7nTvQmcSUcyeHKx2Ac
 yAEmz18kLhG+P+c7VgJ6jc+I3/8OBYKPwV9OP6COSgjbIAAlPOXTNAfxz+Uaf7a9VJmv
 KojoOW3+tXzg/ogcCuK6wOSJLJvkNGAEOihfGv3uPgnHkLvuVmyZSUrnSQ8dRrU1eqz1
 cBsJlNdEhUKxsfziEmjwcL6E6MdqoEVqj68ZvsiX6UgHLIMaIOiglQPN5EknHspqLo5v
 SnTPTnUG0niEvIsg0Y//qMlhQ2dHa11PKPesbSSgAmwib6yaPg11UY72yqqevSn6TJzH
 4FQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qIJ0Kicl6j4bwXIU5AzbCNCUfZFKVKAfMopkDEnB5BY=;
 b=iV+WkVsx1nexqNzUXLt4OdvK/1AHKD4bzaE92V/Vd/afBkcHUYEVMfO+jz0+vlJIHu
 zQe51EcvhIwK0T/xM6xwrnyJoHvtH8XcsfMSCyV4Gpyec2ggHA0IIu8LyXP6hR3JqHY/
 iB1c7fUKIZod+/0WoSCRHpg+1ShJkQwRYop1mYawDAlOMx7PM0WgKas4/X0VgsJa4qo4
 g9T33fSbO4IzrTY3GmfZDhOLlO5TKBepAZtiL6DGprTq8yR9GbnKR1GLm7pUM8OqJYaC
 kulDTSbnOvvXJw4POvPumfw2VpKiW4rEl4nUexpOUcoYKpf7TyZ85BRQPoJ32lY/MhdD
 HwdA==
X-Gm-Message-State: APjAAAUypqbqo7w90JcuUQVSdp3AObe9UwXBc84s7WuwYMxIKVVdrwFT
 xmcXnobB/zevNrNzqycEp7bXRdw8HQ9LDwc4JDveothJ
X-Google-Smtp-Source: APXvYqxFiszEz1ruqvN1JxacvGk2YwwdHvkB9/n82UcGb5OJEZoTXm7+hnEEp5cKFmWsqXK5/IDqdumJ8FpMF8USO5g=
X-Received: by 2002:a50:cbc3:: with SMTP id l3mr6877488edi.258.1578506402641; 
 Wed, 08 Jan 2020 10:00:02 -0800 (PST)
MIME-Version: 1.0
References: <20200102211357.8042-1-pasha.tatashin@soleen.com>
 <20200102211357.8042-2-pasha.tatashin@soleen.com>
 <alpine.DEB.2.21.2001060918470.732@sstabellini-ThinkPad-T480s>
In-Reply-To: <alpine.DEB.2.21.2001060918470.732@sstabellini-ThinkPad-T480s>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Wed, 8 Jan 2020 12:59:51 -0500
Message-ID: <CA+CK2bAbMqusWhGmPg32zZ2gaZ3KPS_6LTDPh3rdi1ohO_yQqw@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] arm/arm64/xen: hypercall.h add includes guards
To: Stefano Stabellini <sstabellini@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_100004_029533_12041F7E 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Stefan Agner <stefan@agner.ch>,
 James Morris <jmorris@namei.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>, Will Deacon <will@kernel.org>,
 boris.ostrovsky@oracle.com, Sasha Levin <sashal@kernel.org>,
 Marc Zyngier <maz@kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 xen-devel@lists.xenproject.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Julien Grall <julien@xen.org>, alexios.zavras@intel.com,
 Thomas Gleixner <tglx@linutronix.de>, allison@lohutok.net, jgross@suse.com,
 steve.capper@arm.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Cooper <andrew.cooper3@citrix.com>, info@metux.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 12:19 PM Stefano Stabellini
<sstabellini@kernel.org> wrote:
>
> On Thu, 2 Jan 2020, Pavel Tatashin wrote:
> > The arm and arm64 versions of hypercall.h are missing the include
> > guards. This is needed because C inlines for privcmd_call are going to
> > be added to the files.
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > Reviewed-by: Julien Grall <julien@xen.org>
>
> Acked-by: Stefano Stabellini <sstabellini@kernel.org>


Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
