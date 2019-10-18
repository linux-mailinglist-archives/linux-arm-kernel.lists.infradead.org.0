Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EA3DCF59
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 21:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YwNhHEo2LMrkbexBt51emXaAV0cAZungoBQjZdOvYtU=; b=O/iChzNKkm2P79
	L6Ru4V4l60UoW/JgxOfnBLrap6i7D9Og9eu4ksIXkwJusI3SlrPVWeAl/ahxUAX7eYxVrnVAO9AjQ
	7B526yuvS9N62siNW/OKs9BtMiROQppeWK16L0e80IxxHP/i39BNa2LrO9QEJhOUBlAsyNSqi9ivq
	AEuEBqU1iDAdGhpk/s2wPimbHlxxMK23j7uyUNDXlUuzJ6ZaMAemrHx1r/IMTB2L5Rq5nldy5F4IJ
	8BCWKvVZIURxBdjuBUF+jMM73ElMd6hJv/2JG8QbWvnchTOnXSlFaSSpP05knmTGtTZZHCREW/Kqv
	8Cg7R62eTKfwyL0gDlAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLY4V-0003Lu-Qy; Fri, 18 Oct 2019 19:37:59 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLY4L-0003Kl-LG
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 19:37:51 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mhl4Q-1hqs1J2Kki-00dk7B for <linux-arm-kernel@lists.infradead.org>; Fri,
 18 Oct 2019 21:37:45 +0200
Received: by mail-qt1-f171.google.com with SMTP id n17so10768109qtr.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 12:37:45 -0700 (PDT)
X-Gm-Message-State: APjAAAVCaojzbI5wG6EEoux9YBEsuPinNzT8Aa3k0cCMBOAmBOI1nPFC
 WcgwnGD/LmSZ5F2CmR3d87tNoNxXD91aG0U2YVk=
X-Google-Smtp-Source: APXvYqwxUyyJwvyfVCPG8c8mF3Sx5XzUNdoCs8nQdFo+YOcYojSMBeTm3NOwBpuU3udL/lLv2xPirOIARmIFDaBY3Zw=
X-Received: by 2002:a05:6214:1150:: with SMTP id
 b16mr11418954qvt.197.1571427464379; 
 Fri, 18 Oct 2019 12:37:44 -0700 (PDT)
MIME-Version: 1.0
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-25-arnd@arndb.de>
 <20191018183940.GM35946@dtor-ws>
 <CAK8P3a1Fc=ogknDRGJ3Sn8bZ8tsR_ebE8_bDtF_kZ4AZ5YG_+g@mail.gmail.com>
In-Reply-To: <CAK8P3a1Fc=ogknDRGJ3Sn8bZ8tsR_ebE8_bDtF_kZ4AZ5YG_+g@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 18 Oct 2019 21:37:28 +0200
X-Gmail-Original-Message-ID: <CAK8P3a00s4=6YHS_2K1r6=i+artkjgxjHJGVHBLuCj1ft5sqFQ@mail.gmail.com>
Message-ID: <CAK8P3a00s4=6YHS_2K1r6=i+artkjgxjHJGVHBLuCj1ft5sqFQ@mail.gmail.com>
Subject: Re: [PATCH 25/46] ARM: pxa: mainstone-wm97xx: use gpio lookup table
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
X-Provags-ID: V03:K1:b1WBQ0ZKnrXyaVDcNBevVy2bEQBCmO1w1MoH0Pt7hkLrVnGDCmJ
 rlY6K3DujTVvusVT4FybsnhJaTCvqPkmfQ5yH+oR8J287WPPTpV/TUzDxVUkZShwrtNmE08
 ovvmZBGjg3Jj/KJxUhXGKfFMETNVkKNI5NhI8XhwQJsNSnnJco54s1ylJNx+zW2ASqGMdum
 Mz9fbLIN7pj4/ZL9IoPtw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:0tYEPIynAdA=:mbRb+P+FO0yp1Rry/NtSJv
 HoHOZCSmDht8f6WLrSYOHDilTNIeI3GMIFgu/lXJ5x2rigxIQKmhfLTFhhrRbhNKWnAj7Qtnn
 RAlhshgPffJENTXPec9j8LXJMTO3RGzZd+aYLjqjo6YGtbnNM3yIGUy7L61Vx4iJIETl8B0cQ
 HZrkgO9i67J7rxVYpCx4n/KS9crOAqIPLyWyecgVAFCff7UHpoohibket7r5aoWeoxqpktvG0
 jWJh5YVmk81xEh9TICNMgEzLzNBfDAEsdHyUWE3NkxGumtx8EGqLyNUZWuPXDHTz4s30gKuns
 po4g0YPHzH/lUugiD6kzLZZB/k342X0N6Z+wjZ7fbTrjN/in+DWiV9d2zxq0qGF6+OY/il/yh
 ZfdsxYv8BFHxviXMLtcH+DjQQPN2ntFYZx2spOM4lwNp6jct8N8C0IUOH81H+bImkdDjx2wWT
 XbwZcdgCw64HLhyzvWXQE/PRpYRMGiXB4edWFib2uM1VAIDa1WGaG66aWicxHmlOaEsO9TIo+
 rXXRvX7pNg2BDAS7dzsAluYNxPxFvi2WJz1j8DX+OeyEsVDQLbwotoOmENFDTWTkkAc45qumP
 Q6nESqiW2Xh6VlLk6nwyW7IkgT9hLjCX91MkVSyp3uuJaE4ZKdK49lTrXiL+ZMPRX6sGpfuvx
 GUJENd4/MgITpZ+95mNVo4GZadIobgIgHyiAEYscwMY6LwNLSvec9sKnjYYkczco+Yv74dh+e
 Ynr8XcdAY94ZYQhjc6c/KKYtWwe8bhPqDhRnz3i8MCW6PfguZi4v7hsO4R7qyEAQzlolYp/YQ
 keucyaJolebGYxIFvZfe8C1t+AMncj+34JkULPu56oaaPgMOp5/tT7xfQlOjafrfCgl90BE4x
 oi5mzJVnZmYUUKgH4kzg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_123749_992095_13A1461B 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, Marek Vasut <marek.vasut@gmail.com>,
 Daniel Mack <daniel@zonque.org>,
 "open list:HID CORE LAYER" <linux-input@vger.kernel.org>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 8:39 PM Dmitry Torokhov
<dmitry.torokhov@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 05:41:40PM +0200, Arnd Bergmann wrote:
> > This driver hardcodes gpio numbers without a header file.
> > Use lookup tables instead.
> >
> > Cc: Marek Vasut <marek.vasut@gmail.com>
> > Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>
> > Cc: linux-input@vger.kernel.org
> > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
>
> Acked-by: Dmitry Torokhov <dmitry.torokhov@gmail.com>
>
> Arnd, do you have these devices by chance? I had stached patches
> converting wm97xx core to use threaded ISR and it would be great if
> someone could test them...

Unfortunately I don't, but I'm hoping that someone can test my series
on any hardware they might have.

If you like, send me your patches and I'll add them to this series.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
