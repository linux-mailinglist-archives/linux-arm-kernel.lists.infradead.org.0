Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C12631DB5CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 15:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lOVnI4/KZHa5uPE4pR2WSqNxgQPZo31NWgh0sMAtSrc=; b=k6U4vzMdwfqx1n
	PxFTITbF+h5XukDHu2CJq/6zyoVs3CRvWSgKn2Ql49HFThx7EVTW4u0RwmL4dRXk3Cvm1m8awMDQJ
	z0vpXJKhxClaB+n7CMswas0mP6NhRDmmm6uTxDBF5UKbHqfM7Jhhi8L4EirGqrKkNOiGFr8DCJwjw
	mzzXieSTcTIMGozB2j0pVx8dhP0R9Qf4kyFkO5D+lrzz23x2/VPRut9KGuUmjVQwYFWfsKpVXFRUZ
	lmx/v1avr+uT4cLCzNZVen+Qn4GNTQZpht69LkozLDL/FdlvB89f2tY5mKb5xewjRXxdI1Ci+RKEP
	8xLbtrw76EhZTUHJG4kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbPFe-0000Wk-IW; Wed, 20 May 2020 13:59:18 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbPFI-0000LE-Sl; Wed, 20 May 2020 13:58:58 +0000
Received: from mail-qk1-f178.google.com ([209.85.222.178]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M5gAG-1jiXqO3kAE-007BOp; Wed, 20 May 2020 15:58:55 +0200
Received: by mail-qk1-f178.google.com with SMTP id n14so3569253qke.8;
 Wed, 20 May 2020 06:58:54 -0700 (PDT)
X-Gm-Message-State: AOAM5329rd5T52GO/7RLn6hor41w0jbARTNdWX6+l/SpCY8bKXDsID4F
 5QmW4YejCPisfeOEAzAeyYjMUkt4O5SpuGOcXPI=
X-Google-Smtp-Source: ABdhPJx4ENYagzo5Gfr37kUrjNr2Lnc/XweiU7zCRwONCX+I6FGqkGHE9iYPDuazm8/99EsA6nl4Ctj9yyfEMM8iO3Q=
X-Received: by 2002:a37:46c9:: with SMTP id t192mr1902078qka.3.1589983133263; 
 Wed, 20 May 2020 06:58:53 -0700 (PDT)
MIME-Version: 1.0
References: <20200520102125.8934-1-robert.jarzmik@free.fr>
 <20200520102125.8934-3-robert.jarzmik@free.fr>
In-Reply-To: <20200520102125.8934-3-robert.jarzmik@free.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 20 May 2020 15:58:37 +0200
X-Gmail-Original-Message-ID: <CAK8P3a0ju_eZqrUW3j2wZTDKd0ijV6iP7tDd4wbx8qdyd7EPBw@mail.gmail.com>
Message-ID: <CAK8P3a0ju_eZqrUW3j2wZTDKd0ijV6iP7tDd4wbx8qdyd7EPBw@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] ASoC: pxa: remove Compulab pxa2xx boards
To: Robert Jarzmik <robert.jarzmik@free.fr>
X-Provags-ID: V03:K1:n/XzOclCosQS73AgmS6K5JYYLpOMaXhgh19KjxBQPAbNfm1J3gX
 kHfjhHH1SCHRmCEVsTH28F9BEU70eem7rk8UMH4q1y0+uLOO67Et/5BcpOm540LzaG7vz9U
 kcAtJcXzCuqw19MmzS3jLLvdmBwlSeiVD4sNftpDUePdWwZiaqvNN89vNhBzP0oVzW47tow
 d2vbr0IYdVi+StiYYPH6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yVD4CzHIxQY=:0C47d2i2kzacDZzCl8YUt8
 eKH7ai5QR3uClPx9nFrEzzKOChfrkWNAMLfTEFMvN1q2F9PZVaZqbG6XXcInWc+14sKVFHins
 BxFHzbukr1L0I9k5DhKtA7UsUcLG+YwN7l7dhQoOj2PFaHKK9VUMXi/hEjOEz1MzZyuoEcujQ
 qfGgB6k2Ep0Wkw26+IFU+TyTqnoDrkx0de41q1tACKCZTL7njPBRKeUdvBEJdZ3qSmwQYZj5v
 JsdjYz8ky1Js/MSdL7L8cWtP2vRBg3x4DzNOOXTcAFpTllgBMSWGOGMZmLuVBX2aDXczD1anK
 +Z1qarI9XTQJCrW0kkYttXvYvUvFKCJotvxr6JLmHAwD1CgqTeQ+nLZLZ5occOhO/6+hXfynP
 +MxDzQRTtOwv/cETd8miVV0fux94m9U3bUIuipZw2PFPxWf/vgFvEuNIUg/T5vdTh7NMXmG4n
 VnLQ97jBKic3A6Pnsu1O0MjiKnnOlTGjWLWt+emyNoazw1AVkiLZcV0fXLyBKpQHcT9AiVYdP
 PX5+ZQBFg1mM+zezPxVjNAzpaYVrX3pOznb6QrYL0qSKbHK6Lm+Ndhi2V5jsSV7ndkIjuKM5r
 Eufsm00zQJU1L+nkHiggs9kxyNxKT+8PKGOzaJLVJ6RDe5Z5iW3S/28Mx30RFcq6d7JLTlcvF
 kIMFbpT4xQmK3tdwBx24kzrzzuo5ttpct+6vUr0Bwk3mwahgbEEC2SkBO/YkvdQUzT/CIeYy6
 AZVL7OZ4Oc1yeMH8rJ/O/AHrrTybqv8IeX9aJYdyO+iBPsw6OGs3YcLzYPxI/JTtPw47bP47K
 QFRxhhST96WsFiU8tLRr/oi0ONQwNOGuzKGD4OThRSMr2849XU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_065857_280643_02CE6D19 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.73 listed in wl.mailspike.net]
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
Cc: Boris Brezillon <boris.brezillon@collabora.com>,
 linux-mtd <linux-mtd@lists.infradead.org>, Mike Rapoport <mike@compulab.co.il>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Miquel Raynal <miquel.raynal@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 12:21 PM Robert Jarzmik <robert.jarzmik@free.fr> wrote:
>
> As these boards have been removed from the pxa tree, amend accordingly
> the sound subsystem.
>
> Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
