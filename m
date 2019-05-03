Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A496912F1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 15:29:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m9W3XgWdzKaKMbdqMjkH5Fssj3C+BpEG34Eep/BoSNY=; b=VHofKSRlgzZf4w
	q2IIvTXOUDNsf1mhs9sp0lIjcQAxSBfAcSZ/EecXdcU/HrgAxItmXQvVyFkBUIh46gzerf5iJOWmK
	ci64Q9XvqWQrFaKxusneimif0YZwP5FdX4oc0xn9j9oQVf1Uuy8t6J7K8WlXUDmuRcdPkqKy68OUu
	53XLqENvLzlZhVmXNX7ZAI7pVq0IVZb5e2AHOioiLbTsRSVl/9g+AEm3vXrBe7xsxVrRVX54Nb+47
	xq8dzkS0BAHIavWskT45rpYRrFnHXMZn2F7Ry8Lo35/ZVTmfai7ZA1rNLTPaH88l7JdDMEUiN2BRN
	P4Yu2lmBO6clfAkXT9YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYG1-00077O-KB; Fri, 03 May 2019 13:29:45 +0000
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYFu-00075O-BX
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 13:29:39 +0000
Received: by mail-qt1-f193.google.com with SMTP id y42so6636286qtk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 06:29:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fk5GUwth5BvvK8Eer/x9OS3rdg8YnckRm3ge9ViV+sM=;
 b=snY0VEZMh6xFN9cy0I5/xOrF89R4K24Yg405x9Qgg1LrOM070TC4FizGYMXYXvj//G
 +Td7FEMcvo/1RT7/aReAliWN4YYKCasOvhDZdwB/Mh4+Q1wxILUUaqwqesAoQ7e5ZGSm
 Q/YTEttq+Zu6bJaK2Rhpfs0XZlY8/hw0/LAv57Xzb20lqlOu2BFfG3+c8OskCA51gd2+
 NIhsvftZb+kSlKw0aAro7b+NpoR0hp+3UPtt5/VO+rtIAQPK5m5lM88vAsh+20CfdLHH
 /iFiDpGL6n50+O10Vye+2BO5qf6jSXPOLx3GNxwu0eU5j6i5INpBGuuNN0RNM0w4i9Pv
 pYYA==
X-Gm-Message-State: APjAAAWqgD85zVXK3VUJ6X3kxaBoupP1zs7RIXNJSddmXSEPIHQjXejg
 q97bfMcMlgwc2RDbU3rKTwe4Sw8CUHX8gI8yoko=
X-Google-Smtp-Source: APXvYqw8ksabgFtpp8q3N/HfcPgRVYjc/VIhVGxEo5Nm6nyf24/EmnBpzo4QPweVmQKnq4DCKvnFaYM9qsG1Qqd+NVU=
X-Received: by 2002:a0c:89c8:: with SMTP id 8mr8014801qvs.149.1556890176895;
 Fri, 03 May 2019 06:29:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190501173943.5688-1-hch@lst.de>
 <20190501173943.5688-6-hch@lst.de>
In-Reply-To: <20190501173943.5688-6-hch@lst.de>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 3 May 2019 09:29:20 -0400
Message-ID: <CAK8P3a2-bFU=2Pmva9qj06JQ44MAW_D-Jaf_0fSExYm1yM8dtQ@mail.gmail.com>
Subject: Re: [PATCH 5/5] asm-generic: remove ptrace.h
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_062938_402636_8E276895 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arndbergmann[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arch <linux-arch@vger.kernel.org>,
 Linux-sh list <linux-sh@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 the arch/x86 maintainers <x86@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 linux-mips@vger.kernel.org, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 1, 2019 at 1:40 PM Christoph Hellwig <hch@lst.de> wrote:
>
> No one is using this helper anymore.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Acked-by: Arnd Bergmann <arnd@arndb.de>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
