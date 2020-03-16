Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB519186640
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TY5mhDhJIAGkdSHxBZRE1lNb6OAZBmrOQsSpVzbuoeE=; b=Mz4W9am60Db3Nq
	UO+3lB/moCrybr8pocqSb03XX2Z2oUuLxmalWty74etJGYmQ8+KIkgetPb8uinkQws6ISw2K7X4ac
	dRDv2jz3oj1/pLEs8Vd0n+fI1scQh8nsJn8NVkSzTpm+YLm4Uc6ii7SGbo6VpSPlZ6/CZbAUd7UvF
	+KqqH51qiUvQZGLRMdRRtlfQCUrW6r4yw5PBmEwHWARo/naLk+UPImp4/vFK7iSZheVcZwxlgJEas
	HfeXLeNnEiEs7SaMNxXX0icaOYXiMGQEb+FukgpzCQuepEVM5NZS0ONBbOFjlHG3dzE6oPD5KQvX8
	oNx2HzgYoaW8NLTsbZVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkzo-0002mR-LM; Mon, 16 Mar 2020 08:21:12 +0000
Received: from mout.kundenserver.de ([217.72.192.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkzZ-0002go-WB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:20:59 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue106 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MTAW9-1ijGrx0s6Z-00UX0c for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:20:54 +0100
Received: by mail-qk1-f178.google.com with SMTP id d8so24642662qka.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:20:54 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3AtVpKd/vXUAe0tJpiV73Ri6pSM79AARw3S6MrWeIwldeORfs4
 p9YvY3Exvj9asY3Zd7X/y57uuqjMs27bid3f3wk=
X-Google-Smtp-Source: ADFU+vtZkjo0vBQ9aoA74/yqa0lPFIa34VkRS7tbzInZGxQBVX7guZUNzz41ojACEOaEmnmy5gmfBpvemtmAz+Tp3s4=
X-Received: by 2002:a37:b984:: with SMTP id j126mr23717429qkf.3.1584346853152; 
 Mon, 16 Mar 2020 01:20:53 -0700 (PDT)
MIME-Version: 1.0
References: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
 <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
In-Reply-To: <1584200119-18594-10-git-send-email-mikelley@microsoft.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:20:37 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
Message-ID: <CAK8P3a1YUjhaVUmjVC2pCoTTBTU408iN44Q=QZ0RDz8rmzJisQ@mail.gmail.com>
Subject: Re: [PATCH v6 09/10] arm64: efi: Export screen_info
To: Michael Kelley <mikelley@microsoft.com>
X-Provags-ID: V03:K1:VYCPgMDsgPFPNIsjwG16FphqOP+fxqH6ND5hQizNK5/Emahe5IJ
 7bfXp/WTLE8FJkLcpG65auQ52H06wnq99FzAQmniOXNTEtS5nEWLM6hRrbma61Ui7kw1Krn
 q4pCrb3p9sFV0U3Vc5lAuEqHXXFxPjzEMSfiCYnXm9J/7YZJthQs/RTyye1ETwD1O+aQOlO
 L8PgSCLBva4rL/4z3smyw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Ntaqx9TGvEU=:4UGx+JExrI69bTZDCilVQv
 viQ+6v9kQZDkIv4UYZ2gzWP7oIgReteraCC9ySgM+koByvX9VEJrZV46/h8SaKlbR6xO86AMj
 i38JO93lfLyqdi9RehQ4eY3LOV6FyqtYwprUYMO9KDJC6yl+l2bUS+z4+Zoa7YXsEp2jeIXim
 V0R2sSopVSFINZWzmSZEV2uGzkI7q+ELduheoxe1VAN952iudPa77TLhkN9mHEC7o4AU98JI0
 3MBXKNcSqjNUFzpBZjrc2nQMUzudkr2zl2NlBr/AtNwG0EGPSTLOgibzGQmuP/5fIg5yA8DCE
 CM1xXcucXMI0Ts72BzW5W9XT0YMuXbK6/S3FvpQLkZ0sEimKrZIIIjfdQ5Pp5VhuLj9ljUG/P
 QjqQSsw3mN5rUVFiDPEnnY/aRghALO9qZ9al1nj2YAD0Ftp14pLvKyd1AyJp1kMwlkti8kYgY
 EwNbABudahmHKAq0Tb3sJwOGsZwObD/VW74BLJ1Kuxlh/QhGntkrDkNMk0Nirg6EcFDpDGFzA
 C+35XKu+SlpDUFt7kf6qTJhIVWpszmRdioONFGFKSZDHmj46iE7yPSVdNdR3GCp77mu3nyhmX
 UGkdO/VYrJqWwGesrk2VZWi9CYWJOm+ztKhsINkVxUuY91ALDG4oGqJ8FRIfcBg5iLlmt9k1D
 GW8+kJGwZ/jxZfmmVI5IfNbf/7F+AK95uxEtirJ0WlKPnkj0Esiw6QlDB0b2BID32U52/42yk
 nLhbrA7CXimSVDW1bzJ0Lmzh1SFyOBIyfV+QptVOs+Yio0q3d/U5pWfZQUjt7UlwnaICKA4L/
 J7oKMyu3ut2pEl/bVi1uXKk3E8vlMi0RNO7fUG5ziOToVhi/rI=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_012058_340677_E13C3691 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.75 listed in list.dnswl.org]
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
> The Hyper-V frame buffer driver may be built as a module, and
> it needs access to screen_info. So export screen_info.
>
> Signed-off-by: Michael Kelley <mikelley@microsoft.com>

Is there any chance of using a more modern KMS based driver for the screen
than the old fbdev subsystem? I had hoped to one day completely remove
support for the old CONFIG_VIDEO_FBDEV and screen_info from modern
architectures.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
