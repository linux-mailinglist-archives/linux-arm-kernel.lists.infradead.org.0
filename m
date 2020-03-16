Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1469F186660
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eUtTqGb6u28Q4/M8diMfrZx1FeovTbJCdRm+wIdtpOM=; b=QWfvuW7JU3FMhD
	EAbhb4OeOQWjNsYdQztEJv6E06IqHn9Z5QIb2NJpf/UwadrDP0qfbVdsm/3EW1EBz+J3PHLn/J18s
	Re+LDBpAGerlwzke0SdmWjlxWFID3LxcOIjklCXj9ZgCQ7d39sGbzISGFYwwsq75uYdEVqDQeqmNY
	jUfqKfNtJpF0u67wVAeb12H8sxTZcEg47saGg82opzNhLmbirgP5fwz+8IFcwsx8ArnamJkU/m9lq
	QBz/6NzbeV+GkLRCHIuhUJF0osj55HID2K/Jx6h9y9KvfgKgRiOX3KpcsqxOjmOnXYyPpcnZ+OpMv
	MeCsviySAApQkKqcz+fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDl3y-0005HX-IN; Mon, 16 Mar 2020 08:25:30 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDl3o-0005Gi-Ts
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:25:22 +0000
Received: from mail-qt1-f178.google.com ([209.85.160.178]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mdf3x-1jmohA2kO9-00ZdoE for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:25:17 +0100
Received: by mail-qt1-f178.google.com with SMTP id d22so13422246qtn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:25:17 -0700 (PDT)
X-Gm-Message-State: ANhLgQ1WSzw41Mz9ntlzT/1at57L/7Ct2bNdb3lz4b8xbph+eKSUbrVu
 FgB0/BJCW6pCiLekV6vNyVy4OvoSgrsqEPjEALE=
X-Google-Smtp-Source: ADFU+vsWAC/0lo+zE5AbQT0noMV/ZvJVnNxBInM+WO6OIJI68cMfZZhm1vhJ/+ZDY5xIHR7TVICkzE3S8xA3+jp3s3U=
X-Received: by 2002:aed:3b4c:: with SMTP id q12mr23609109qte.18.1584347116325; 
 Mon, 16 Mar 2020 01:25:16 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-6-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1584200119-18594-6-git-send-email-mikelley@microsoft.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:25:00 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2yve3R1w5igBYMy3HSFJ8Xt4BHhXQcaTAkNCdZXZ1v-w@mail.gmail.com>
Message-ID: <CAK8P3a2yve3R1w5igBYMy3HSFJ8Xt4BHhXQcaTAkNCdZXZ1v-w@mail.gmail.com>
Subject: Re: [PATCH v6 05/10] arm64: hyperv: Add interrupt handlers for VMbus
 and stimer
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:k1knvoGGPZcrEifCIAEENR36CbS+8pqrdViC5NX64CroIMI6qby
 Pf2Wnyc6OfSAmzGKo2lO9KSxAzZ+JeZ0fnoM4IFy2hs2DKrHskXMdcuhqDmoL90YmzSiQ4D
 DNU01BQpC847UwS4hc/HS/pGCnl37dAI5Vu1y8aMHDIL50fBRkfvc+QdcfUaY0oZbOR5yrl
 mzBhABrrg5otl7uDcZPng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VIsE61qwPQg=:1dxWYzvRRQfvQqYuqmw0iv
 Q0Uu3od/u/YCs8vMGFTFFcoYPJ0mm3uvOjglmgiVZb6+Z8QefGoqfYXnU3eIYeTBhSl3wl06P
 Sj8pyhdjxnUVyLa+FgWs+WsqFTspNlDmeU+CaoVwMBs4t+pXgq4uv2RSPFT8EoVhEwuEEkuNX
 ThRUwJ0UOQ78pc8evpdZHN/HPURp3jsrcsZE0Mlehodr/iIpWN75OXG2nn9pUq1NC0CuwflDf
 UhwCSAl3gbBOy87rgz8utYxb9r2r9ZPDEeqc8G60l8KjuRgxLfc4LME6rZ4tnfNbwZzqyiBBK
 VbDXKAemIHMPcBdugxx3h4CAq4RnsY5Ds4TORVvckog7XE+ZuhdfuvvqkkXEQOrQ7JKzzCMr9
 1uZgQNNM9y6679RycPPWsQi5sXpp196L5GW9QoEf42VIroYLqO/kim7SONJH7S8ugDaPG6Zm0
 7PeVWhOAoUBSG7RiKIwIG+3vteQloNvw2qOKADhaoqD1QKLjiI47wQsw35nL0DA2jL42FykWF
 GFBPFTGZRLxg+dbsRbpNHPjtqOFMdPrdG/GD3yxE0eXPQM1CNIaXZjz/9JMmQ6EC861AdEaq/
 3kLgruSUzoFuPXs+rLkcq8IZOJlMFB3dJyAWtg/EV96qkwqPbrxx6G9xr0Yh35/Ex2AFPILXQ
 yo8U4/aKVncPshmgGjq4uxBtKUQcm5aLgrHuqH1sNvECLe2X2iN9eCFL/POPstgdtq3i14+kU
 dgU3MgAnSevfE1Uf9DuxMrPX2X0LCcmB0SAkdHThFqgJUfHAgQCQ85LmsQzekK0eMDtJfhTEu
 berhiGJT/oULUC4Qrx4/RP/gaod8sXyz0yolLnx/r9RZV8ImUE=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_012521_258223_8F4B35FD 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
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
 linux-arch <linux-arch@vger.kernel.org>, linux-hyperv@vger.kernel.org,
 linux-efi <linux-efi@vger.kernel.org>, Boqun Feng <boqun.feng@gmail.com>,
 gregkh <gregkh@linuxfoundation.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Jason Wang <jasowang@redhat.com>, sunilmut@microsoft.com,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 marcelo.cerri@canonical.com, olaf@aepfle.de, Marc Zyngier <maz@kernel.org>,
 Andy Whitcroft <apw@canonical.com>, Vitaly Kuznetsov <vkuznets@redhat.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Mar 14, 2020 at 4:36 PM Michael Kelley <mikelley@microsoft.com> wrote:
>
> Add ARM64-specific code to set up and handle the interrupts
> generated by Hyper-V for VMbus messages and for stimer expiration.
>
> This code is architecture dependent and is mostly driven by
> architecture independent code in the VMbus driver and the
> Hyper-V timer clocksource driver.
>
> This code is built only when CONFIG_HYPERV is enabled.
>
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>

This looks like it should be a nested irqchip driver instead, so your
device drivers can use the normal request_irq() functions etc.

Is anything preventing you from doing that? If so, please describe
that in the changelog and in a comment in the driver.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
