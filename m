Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB7103A1D1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Jun 2019 22:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aJ9bAgC/yQaYOQ+tJ0DKjurMfc6acUh4rNDm9C344Mk=; b=c4FJwpdIYy26Bl
	mff194KA0gims9/+DfSwTHn8/X5dev92F/SlE4T2paMvO2/CwYEn2aMbTVcauFwOq+WE8+/xo4cYx
	VAUpdY/V7C8tnEEyUNplDdpAJieZERy2t1SDolI/w0PCvsb/EPqZo/gmynigNEhX7fvWa4Ca0XJJ6
	MW3FowS4LhkFsDy7hw0smeJown5OeWtsuEC+mJ6eJY9wkkZniGdP1A5pZplMv706U84g7LE7ziIrp
	YGRqvHzhIWVNi+kq4gWuLw5n9XWAzYLDeD/gDm8OwhfKUcLqondJhy2NFME0I2pO04t4WyKQW5VOx
	Sd2GE3TkbVqWPpZJbZ5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhWa-0004DO-OJ; Sat, 08 Jun 2019 20:01:12 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhW7-000418-Vb; Sat, 08 Jun 2019 20:00:46 +0000
Received: by mail-ot1-x342.google.com with SMTP id j19so4961713otq.2;
 Sat, 08 Jun 2019 13:00:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wvkpFaao1bpKQ1FWayC3EusodSIMGE6w694SSNfMEPA=;
 b=iCm+4VqZSt6kP2oAqKNK9ttO+n1BscayXijHYPF97LlKXKRTy/SQJZN8g6ptnB37GY
 2qpvcyeM4ipaUGv65IBoJk02Qm02N2zjp1eUXMCq+AN4trMiVdYmCSqfFUNnpqCeLs73
 Hp2SAEt7Mvr8wKtGNmb72g6Av+lQZbvcgd3MLPNKA40YmEdhRMR+1oBXTPPWTEwvlJzj
 tt/CdN305EsiUJ9JuqpVD3D7V7QibejrzDVzpZwMPG3HBT3xKfgfibme2CBG/1ZgwDvL
 bvRP90LTWNSXGucxuU1L5uvWJLtOO0uXdC4As8XsFXZ4rsoY6xw7ij12LQADBI9QEXzN
 hF4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wvkpFaao1bpKQ1FWayC3EusodSIMGE6w694SSNfMEPA=;
 b=Ene88g3k0uhWv4bjLjeeDlI4KscG6JVUZR/MR4SMZ3i2+2Za4F3PHwzrU9YvVoFn8B
 MnLZbG9xb3MX6KDwXWDeZ6PM1buMmmZDA0t1ubSdT2bGRxvgeWMoK19KnlRR/OSFmypw
 7U7cfvIJjepxyZLKAWjrI9Sch5MoNxFN9tC9dK1YBC6qSQXMpqXcDeSv3fpvWPdb3P9h
 2Nuz0QU2gU3RBcDNOteyqE1Jelch2bO2SupKPWYX/iqjtl/4w+NebzTGqd1S3ZIJzjaY
 ypS5ESWmCV/0lakrXOjg3JWV63Wr69q5R8Ayz0JcFOX5zC0ti21Na19e6h0w4pofAGUs
 jhpQ==
X-Gm-Message-State: APjAAAWsWeLo1uG6D95QvRwr+Lz9N9qI8dHdf43fho8j7dGLVCcYN2Kk
 R7Ry8FCyFKcSNqvomySW5kXe3UxySph0BktFrRw=
X-Google-Smtp-Source: APXvYqzE1S4at/LKVQiJdPOZ7qR8leNmGzSuvzyjOZztdFT72UxQXxBOmWKetA1I5Vc/iv6tZY4wzFoHoG2nI91n1qA=
X-Received: by 2002:a9d:6d8d:: with SMTP id x13mr23458026otp.6.1560024042878; 
 Sat, 08 Jun 2019 13:00:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAFBinCBOX8HyY-UocsVQvsnTr4XWXyE9oU+f2xhO1=JU0i_9ow@mail.gmail.com>
 <20190321214401.GC19508@bombadil.infradead.org>
 <CAFBinCA6oK5UhDAt9kva5qRisxr2gxMF26AMK8vC4b1DN5RXrw@mail.gmail.com>
 <5cad2529-8776-687e-58d0-4fb9e2ec59b1@amlogic.com>
 <CAFBinCA=0XSSVmzfTgb4eSiVFr=XRHqLOVFGyK0++XRty6VjnQ@mail.gmail.com>
 <32799846-b8f0-758f-32eb-a9ce435e0b79@amlogic.com>
 <CAFBinCDHmuNZxuDf3pe2ij6m8aX2fho7L+B9ZMaMOo28tPZ62Q@mail.gmail.com>
 <79b81748-8508-414f-c08a-c99cb4ae4b2a@amlogic.com>
 <CAFBinCCSkVGp_iWKf=o=7UGuDUWxyLPGdrqGy_P-HPuEJiU1zQ@mail.gmail.com>
 <8cb108ff-7a72-6db4-660d-33880fcee08a@amlogic.com>
 <CAFBinCD4cRGbC=cFYEGVAHOtBSvrgNbCSfDWe3To0KCE5+ceVw@mail.gmail.com>
 <45ce172c-5c76-bb69-31c8-af91e8ffdd68@amlogic.com>
In-Reply-To: <45ce172c-5c76-bb69-31c8-af91e8ffdd68@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Sat, 8 Jun 2019 22:00:31 +0200
Message-ID: <CAFBinCDWaDoRbbG+5B=27MNRTcekbooEdgAZv5kyS+Xu6M7Bzg@mail.gmail.com>
Subject: Re: 32-bit Amlogic (ARM) SoC: kernel BUG in kfree()
To: Liang Yang <liang.yang@amlogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_130044_011635_1D3DA5EF 
X-CRM114-Status: GOOD (  23.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mhocko@suse.com, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 Matthew Wilcox <willy@infradead.org>, rppt@linux.ibm.com, linux-mm@kvack.org,
 linux-mtd@lists.infradead.org, linux-amlogic@lists.infradead.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Liang,

On Thu, Apr 11, 2019 at 5:00 AM Liang Yang <liang.yang@amlogic.com> wrote:
>
> Hi Martin,
> On 2019/4/11 1:54, Martin Blumenstingl wrote:
> > Hi Liang,
> >
> > On Wed, Apr 10, 2019 at 1:08 PM Liang Yang <liang.yang@amlogic.com> wrote:
> >>
> >> Hi Martin,
> >>
> >> On 2019/4/5 12:30, Martin Blumenstingl wrote:
> >>> Hi Liang,
> >>>
> >>> On Fri, Mar 29, 2019 at 8:44 AM Liang Yang <liang.yang@amlogic.com> wrote:
> >>>>
> >>>> Hi Martin,
> >>>>
> >>>> On 2019/3/29 2:03, Martin Blumenstingl wrote:
> >>>>> Hi Liang,
> >>>> [......]
> >>>>>> I don't think it is caused by a different NAND type, but i have followed
> >>>>>> the some test on my GXL platform. we can see the result from the
> >>>>>> attachment. By the way, i don't find any information about this on meson
> >>>>>> NFC datasheet, so i will ask our VLSI.
> >>>>>> Martin, May you reproduce it with the new patch on meson8b platform ? I
> >>>>>> need a more clear and easier compared log like gxl.txt. Thanks.
> >>>>> your gxl.txt is great, finally I can also compare my own results with
> >>>>> something that works for you!
> >>>>> in my results (see attachment) the "DATA_IN  [256 B, force 8-bit]"
> >>>>> instructions result in a different info buffer output.
> >>>>> does this make any sense to you?
> >>>>>
> >>>> I have asked our VLSI designer for explanation or simulation result by
> >>>> an e-mail. Thanks.
> >>> do you have any update on this?
> >> Sorry. I haven't got reply from VLSI designer yet. We tried to improve
> >> priority yesterday, but i still can't estimate the time. There is no
> >> document or change list showing the difference between m8/b and gxl/axg
> >> serial chips. Now it seems that we can't use command NFC_CMD_N2M on nand
> >> initialization for m8/b chips and use *read byte from NFC fifo register*
> >> instead.
> > thank you for the status update!
> >
> > I am trying to understand your suggestion not to use NFC_CMD_N2M:
> > the documentation (public S922X datasheet from Hardkernel: [0]) states
> > that P_NAND_BUF (NFC_REG_BUF in the meson_nand driver) can hold up to
> > four bytes of data. is this the "read byte from NFC FIFO register" you
> > mentioned?
> >
> You are right.take the early meson NFC driver V2 on previous mail as a
> reference.
>
> > Before I spend time changing the code to use the FIFO register I would
> > like to wait for an answer from your VLSI designer.
> > Setting the "correct" info buffer length for NFC_CMD_N2M on the 32-bit
> > SoCs seems like an easier solution compared to switching to the FIFO
> > register. Keeping NFC_CMD_N2M on the 32-bit SoCs also allows us to
> > have only one code-path for 32 and 64 bit SoCs, meaning we don't have
> > to maintain two separate code-paths for basically the same
> > functionality (assuming that NFC_CMD_N2M is not completely broken on
> > the 32-bit SoCs, we just don't know how to use it yet).
> >
> All right. I am also waiting for the answer.
do you have any update on this?


Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
