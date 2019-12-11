Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A1111BCDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 20:27:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2kjH5b7HGWeq/tnkDIQwUbPmAnT/8ijRQKtClNuIS0=; b=rFiiur0E1jdlCM
	i4Qt+X8qFvvayGKFvr036+7o4cVYB6qCh3dHtG8hJzfm5BYdl7au6C2dlEiHJzR5U0GVFFYXfZRJE
	78CPlrUCXGZQZEB+0dRzktcJkHUt2FH5xohvgku5UI+7yZfqXjzDDHE5QY0gv19sfGBmP9O0tu5Jz
	vOukHzeuL9eAO2n1qsDigrh6qosrnKhaRORVQcsC/qf9QS3/k6I9cQAT6oJxolkK5UMFW0DYJf0aS
	zN+alMMFmfm2oaGMnTBwpRRW4LwejDd/F5tlfNOrdYpDmF1UdI1bGqtWthHhO6RvhQfSbKeQOCFuR
	e80PrmU7fSohCKlD8a2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7dg-0003ct-KP; Wed, 11 Dec 2019 19:27:12 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7dW-0003by-P9
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 19:27:04 +0000
Received: from mail-qk1-f171.google.com ([209.85.222.171]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Mzydy-1hlfGw33KA-00x5pV for <linux-arm-kernel@lists.infradead.org>; Wed,
 11 Dec 2019 20:26:56 +0100
Received: by mail-qk1-f171.google.com with SMTP id c17so10718467qkg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 11:26:56 -0800 (PST)
X-Gm-Message-State: APjAAAVddC+t4DX2EfLunrziLtOt+qhpM8oTcTmgetqGHCiIaJiU9+XW
 UJKjIEi48PF8DU5HTvfe7kqsfjXx6R0idCqSFvQ=
X-Google-Smtp-Source: APXvYqzp5gI76+hnxf6/hmrPMG5/BvSczTPLPStullb7LcktBYw4tJjRaFzZ4zVRtyE/ktu6JAXLohEVRyxYWiy1yZ4=
X-Received: by 2002:a37:b283:: with SMTP id b125mr4686863qkf.352.1576092415604; 
 Wed, 11 Dec 2019 11:26:55 -0800 (PST)
MIME-Version: 1.0
References: <20191211184027.20130-1-catalin.marinas@arm.com>
 <20191211184027.20130-2-catalin.marinas@arm.com>
In-Reply-To: <20191211184027.20130-2-catalin.marinas@arm.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 11 Dec 2019 20:26:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0OxNWPjekT_m55reuopHJeWZs6dm7YTtoLgd39P6y2PQ@mail.gmail.com>
Message-ID: <CAK8P3a0OxNWPjekT_m55reuopHJeWZs6dm7YTtoLgd39P6y2PQ@mail.gmail.com>
Subject: Re: [PATCH 01/22] mm: Reserve asm-generic prot flags 0x10 and 0x20
 for arch use
To: Catalin Marinas <catalin.marinas@arm.com>
X-Provags-ID: V03:K1:A9bRV3qLsXYwuIls0oFSRsAVb00+NajaGnNPcXGmK57aTD2AFTw
 dTO0b57IC8Fs1+fbb7lP9dr7xcibRgm6WvKFULWPrOuBBdpZ+WfGRVy498PwkQiajK+znOd
 P06O7IMX62Jp3tH/z28AO1oMSFr4sygf7sZMQrw7U8KB1ncKvuSs01tV1MQwqq0j4FEfenD
 kaWd9prsOdFJ8oSHqVUUQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MOpDDz4En5U=:Cx6ri6DcBO6HEIe6NlgBLc
 url4SQf61ROO0M+Qv/I6GfmflzBE//iusoYtF8hCpyxjl+Wf2yMx4ZbrNWrempu8ZbSE9Ta3D
 p5zOgFMgjcKCMRJDvhVRrM0RxECpDteoZ5fmC5zWOxT4zErn1BXYkm5hQDsgTxh/d53+kIdwW
 3y0sMM2Qm+2SjJE28irAngcR1SCXZpoudb6iIt8Izw7YAAFFuyOAaI0UMSafvBXjN37GJgPxP
 gRnw85Fo8IZQjlpEPfPijfKo98Uk0nPyTtvtSGXsa4bQC9dLHZf/YgwewckwFgkDKD4ynOph8
 p858Fc7t54/+7MwCBqrrM5baXShKbXsiidPrXuHXV9wtkK5yHKllAYbxsCjSdNZ0OYaSMNK/h
 x6KaBkr6ymHGw+i27WaBM4ddbgp9Zvp2ECrdmTZkKsa9gawXfJdv5gtrV9w05IxY0mkloVZZn
 sQpXmI2oh3D8nZqiuZ0lRVZosjnL92oB3g1RoPhgkDJshPrIIp/D+Z+44lxJ/YylVznsoWXjk
 N+8YPEyXJ5bcwJPPfKFSxX0geRcJ5Spqw7P66YSJBKqrYjL9FpHl38gY9+W7HYDbLAJf3j9kF
 mhNUwFhle8QaRYrj1JZO6ax8kZJm3EZQN/9GcexkVX5glEyZ3cYU8oEcsPNZewG6pxM4wqE1x
 TL1uFYCnGiYIowlStMhjH7XKMtajZKOJQWnee9Uckxem6CW4xVk6qXkXAScow6GVo2v88lRke
 m1vdaYfRY6kjiW7dMYkFIParm7Y7mUI0DDA9i4HlR3+yK0f7z5Le8L5jYHl6xLSw0xmN9FSBa
 b4h/jd+z6XobLN2VYzSCdk5K9YfWtkZBiMugeNIauxc4izVWmzBKdhstBiiXJYI7DJH1O7SaI
 64zEo2fpbZg5dzn9qbdQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112703_108504_207FBD47 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, Marc Zyngier <maz@kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> From: Dave Martin <Dave.Martin@arm.com>
>
> The asm-generic/mman.h definitions are used by a few architectures that
> also define arch-specific PROT flags with value 0x10 and 0x20. This
> currently applies to sparc and powerpc for 0x10, while arm64 will soon
> join with 0x10 and 0x20.
>
> To help future maintainers, document the use of this flag in the
> asm-generic header too.
>
> Cc: Arnd Bergmann <arnd@arndb.de>
> Signed-off-by: Dave Martin <Dave.Martin@arm.com>
> [catalin.marinas@arm.com: reserve 0x20 as well]
> Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
