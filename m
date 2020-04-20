Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC6E1B1034
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 17:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0qSqnNswAFajzbFp2QrbA+JvlaTcYCBvwD08kv/J5xk=; b=FY6jAp+nu6zii5
	PrrXZWPuypheTJhKLKEtZH+9FY7fgnd7uwY0maSd95290LmHW9SQ1mb9UsCMjPGfPLizBjxqJf05A
	C6c4tq93kIHSRpuiBSsQkYp48qDxH+FtsMRSMPxqag3oRsO9UnBhL6GsLo+e/0j0aiEXx+HVaQ8JU
	af8zb9L8l6Ej9PyYJDSOdaQOGbpsuwt544O7wXcUQX4rtCgqQCpCBiSDWUiviAH69g+JH6Yp08K7t
	F6z0X38CGZxAMNU704FgnYAZtSm6OEQdBT+uTDxezlbidCklWBmxTghpAWMUYnnz24yEFwQUr9KNr
	SVN1rh63U9BHTbsGiV3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQYPB-0000Jo-FC; Mon, 20 Apr 2020 15:32:17 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQYOx-0000IH-VC
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 15:32:05 +0000
Received: from mail-qk1-f182.google.com ([209.85.222.182]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mz9IT-1j4e1p0JdL-00wCWR for <linux-arm-kernel@lists.infradead.org>; Mon,
 20 Apr 2020 17:32:02 +0200
Received: by mail-qk1-f182.google.com with SMTP id l78so11008708qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 08:32:01 -0700 (PDT)
X-Gm-Message-State: AGi0PubFkWWvTPwGqcOiGK3wfStybNQsC2eSkp0JBBJBVe9Uvk041+LL
 Dvet1u/Xp6MhA9YU0uyIhmF0+B62+xbRYuP49R0=
X-Google-Smtp-Source: APiQypKss06g58JOx2CAuoSVyQnWDrXkNWtjIKGx96inYGqheqlBCcxiPw404obxJ+1ETrjvTEtREO95m0t3bnuLKQE=
X-Received: by 2002:a37:63d0:: with SMTP id x199mr16115619qkb.3.1587396720972; 
 Mon, 20 Apr 2020 08:32:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200419170810.5738-1-robh@kernel.org>
 <20200419170810.5738-12-robh@kernel.org>
In-Reply-To: <20200419170810.5738-12-robh@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 20 Apr 2020 17:31:44 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0VeKhe7J_p+UaYPcpVsYA3Wv3KyGnPWBf2mgbtAHHuZw@mail.gmail.com>
Message-ID: <CAK8P3a0VeKhe7J_p+UaYPcpVsYA3Wv3KyGnPWBf2mgbtAHHuZw@mail.gmail.com>
Subject: Re: [PATCH 11/17] mfd: vexpress-sysreg: Use devres API variants
To: Rob Herring <robh@kernel.org>
X-Provags-ID: V03:K1:N5wFBQf26Z0ztxqIYrt4hSiQE/YI+w1+C39/VnSuM8LvJhS4xry
 fWj5Ny7MzV7xndgxlj0ditY/hEeENcGEbpe/3U/dj9/qaEcxinBMZA6YtoIQ06vYBx+ul7f
 /a3xrfCJHNrACXz9VWVz2EEuDSB+zrIxUxK9uU6Y4sUcA61bgwScpg07YSpUOcHHkaWv1fG
 hVld0Z/zgGMRjiezLrB2g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:j3bSt7eDAlU=:oYHjvNrmZFkGpioHiAgRP1
 FmD8i8ogTzHvs88nDEU1JXEZ9Gb5kHwKyGtSMr/9HlUQimmaZ9p4GvFTm38mGftlw9YApkvjE
 m4otJ4uE1Lo1o7/+2PcCA+kU1f38OhU+Kq1DSKsaqSbiCrqHLpDcbh1yyVVT8BuJeH5eWRbFZ
 EXp6TgtYT06MMDkt6Mij06gg5i01LQhd466Oj4DDCu+5fU1IyrbJUe8yF+YmkvoiN6n9biZDu
 ujE1TG1qLaNAqUdwOw/c19/dilXXAQ7u/gsDjYTF9Ajc5NAPcSZfjjDju7zL2jELvEo2vWG/a
 EUIss1LMBLjr/4JVeKTuwu1aPSW889kqN0cK6da3+2kS6WEMTsycQzd+d7bKJ4t312b3kSg+H
 ve0N5DTuwcRQjDDpEf5X6ySuzHy/cFzeW0MRr40Uh4j6XSTXRDnGZ5kWy2jKrrXEQydHNN3eB
 P0JvaiVOl74AaoIVQ2bEySjGT+Adh7KrqVUgNvfsXLbZgmTr86NCcBVO2W3Pz/b+ehMawYLj0
 +x6nta8t7NvwbeOQq7plQdC6DXHqax4aUeJiwRgm2hilLx7V3ARM5GYn4pcg8mqf1vS7JsXqq
 q3MJAMuVXy8YuFDGEFmVcSgjzcZSzt3jY9lMdgfRDrVR6pmDa1E+j/T3yxCIP02asrTvd69g9
 ZdbAUVQBrbDj/DdLv0s6CsHrvz9JusMIdKuPs5ZHV7nbOCqyBit+MaQQmZFXPSESKzQfbIoOW
 a6H6X3Rfpyf6JLebm10/E/3T9WecZmU21g0KezNoNT0MkBpaF/9E0VZVRzn19sdKoXUl8N5Of
 XfE9cHrjuxDaNfxSPxwu9RZDjLJLCGrSTk40FBWQ4n437pmPXA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_083204_295282_D0BA1309 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will@kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sudeep Holla <sudeep.holla@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Apr 19, 2020 at 7:08 PM Rob Herring <robh@kernel.org> wrote:
>
> Use the managed devm_gpiochip_add_data() and devm_mfd_add_devices()
> instead of their unmanaged counterparts. With this, no .remove() hook is
> needed for driver unbind.
>
> Cc: Liviu Dudau <liviu.dudau@arm.com>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
