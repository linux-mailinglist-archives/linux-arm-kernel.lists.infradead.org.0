Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FB1933598
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:57:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MezOwp9iXSfczv6b+zsdFkd4xMW/AQNca2XN7S3QWzo=; b=LtwDhVYN1haFMp
	3eInKJHyHrQ1xonvJrMrgd82m7MkcHjy2ydpgINqybvn7pkkjYlYyDwjNjypeIcyAgCkKFqGgQW0i
	FVLDFtGbJzTYnAtMgfjh8MmCOpsDRlyoC24ZVqkb/T94BulM3BAoa+1fwynkdkp+FyUPenoMq2ErQ
	Iu/aCafmWFlKxyhPQaaee+aF7IqY243RfghFu6z02gZ85tUeXRgSi0X0Eg6gUj9/tlsLdSCIF004e
	cvtuWloCxYXX4ojt1wHa3EQBHD2XYtjiHHr9SaWQhAfRqUGyBbqqzlGSb5RNoA3T/jf5N8SHHuOrG
	46WsadxUeRjqs8UabVgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqGu-0001wE-0h; Mon, 03 Jun 2019 16:57:20 +0000
Received: from mail-ot1-x34a.google.com ([2607:f8b0:4864:20::34a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFT-0000BH-Er
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:56:08 +0000
Received: by mail-ot1-x34a.google.com with SMTP id d62so9220176otb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=ZBmZ0AJkpI6Le2BTudY9LfSDHiJInTNRilsGVrjkAC4=;
 b=URpy1zkCsiHDZT4QO7sl51daLEh3EGQ+QBRWhBXCE891aX0bBPmoAKSOA31jx1eR/L
 lVC6wRB0VJkhYxePvRUt+LMH36W5FFHQFgoa3GPev4OVYVi3rHZ7c3DIf31iffj+WRWq
 O/UwDncv5Fut/rLbuSahvZjC3AOwYT8i5PrP8W6A3ApbgszBZnpxe6Ijm9sVziVKebM1
 iMXDrWTNGRgrpGSzVkD4uXSftJythbi88SDUBif5NioLplX3HzpUrRyFyzSWH4dNAKRr
 WMIQ2F6id96lYcVo97o9s2zuDCTDHymNEv75yNnQamJ6cKIMShowZNQgGMTsd3D7DLBr
 FGuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=ZBmZ0AJkpI6Le2BTudY9LfSDHiJInTNRilsGVrjkAC4=;
 b=Div4IM70qUzDmBaqGci+vqhP0hdtTXvwjTEBgne5gx1C2dK16P0IygdR6MZR6AtCMl
 R0yLUeBbgNEkv2HBSjWnJIRAZ+HOrkTmMKfZqmdxvxO3rhjNT6PpZ7ewmWAM5OW41KkB
 GpBCwedtv68Fr55SsyaUMTIoZYzcwl3a0VxkR/sVuXSehO5xisOVNy17DSIFZxxlDuWb
 DdSe9LY6uYRqCxNxcS+V8vu9drm/M2quZOmm5ytk1vLEbIh6GnKFCgCy1bkP50/b/SxQ
 z0JSW72SvG0C+GoOkXtovNvCGNb8i5qJKVdtsgaRm2ZkerRJTRSS1NtMwr7sc8u/1Dk7
 gGkw==
X-Gm-Message-State: APjAAAVZacWLXUveKs2ceX/N3ajXGB2SahtV9+m0HzZLhk2at4zhmpMn
 /phAbHEpaMspHOuUdtjDlUqY5Sewes6K4eSk1HckRRUZywk+IgvHRIJckumoSwpQtUEDJvjZSon
 H0EuLPpPZEpgKA1TV5vSEGkeEu5jJ8ZVOQOC9dEQCvauXevnGKA/l8a9i11aEQrDQ/FQqZNlyN7
 gjtEPDP/TflOABlds=
X-Google-Smtp-Source: APXvYqy+jD2zPLosNFGdbJ9ezUNMRGpcmbF5VcOnmGNGlPs/hbYWUHg1PJfAxR5NSiop2ABNMtv5Bkf3tC6COzAd
X-Received: by 2002:aca:4c3:: with SMTP id 186mr1626180oie.12.1559580949610;
 Mon, 03 Jun 2019 09:55:49 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:10 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <51f44a12c4e81c9edea8dcd268f820f5d1fad87c.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 08/16] fs, arm64: untag user pointers in copy_mount_options
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095552_122969_89F9C099 
X-CRM114-Status: GOOD (  15.68  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:34a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

In copy_mount_options a user address is being subtracted from TASK_SIZE.
If the address is lower than TASK_SIZE, the size is calculated to not
allow the exact_copy_from_user() call to cross TASK_SIZE boundary.
However if the address is tagged, then the size will be calculated
incorrectly.

Untag the address before subtracting.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 fs/namespace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/namespace.c b/fs/namespace.c
index b26778bdc236..2e85712a19ed 100644
--- a/fs/namespace.c
+++ b/fs/namespace.c
@@ -2993,7 +2993,7 @@ void *copy_mount_options(const void __user * data)
 	 * the remainder of the page.
 	 */
 	/* copy_from_user cannot cross TASK_SIZE ! */
-	size = TASK_SIZE - (unsigned long)data;
+	size = TASK_SIZE - (unsigned long)untagged_addr(data);
 	if (size > PAGE_SIZE)
 		size = PAGE_SIZE;
 
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
