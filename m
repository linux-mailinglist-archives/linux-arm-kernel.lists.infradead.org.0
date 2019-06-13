Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DCE447FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 19:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4/6tNjQvaB1gub52YZJcWJIgbtzyLczWkl3S+7IM/kM=; b=jn8COQm2SzG5aF
	Jw9tFVL+q5dgRtAmKfaPhYZe88EQxujZEeqo/cOiVXuNGGY2HrYim7K97XzqIOMZMGjFcEpR108Le
	g1gpwRklJ8a8912RtJOeI9GizpUnO8R9VWi0Gu3ILVVdfF5d78qVVkUv1vyZK6nxL877Ua1dbqLaY
	KhsJzsKanACZ1WotWasArpRPymfhB4CznzT/BQzBbGDUsPb06c0/mZS90pc325In4AXaKZsiAMQeV
	cvrwmV3TZ9924gU5hzZcgOVXlwmyrCb3IFkhjiTwef69Bvofu7A0EO84B4k3MyRcrdghHyMrXl3MZ
	eV6Oew31DhmJjiRL28NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbT8Z-0002V2-R5; Thu, 13 Jun 2019 17:03:43 +0000
Received: from frisell.zx2c4.com ([192.95.5.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbT8M-0002Tp-LI
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 17:03:32 +0000
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 364d8f28
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:31:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=zx2c4.com; h=mime-version
 :references:in-reply-to:from:date:message-id:subject:to:cc
 :content-type; s=mail; bh=eQU47tAOAY4Ww+Qu6JsBiSiAKA8=; b=xZWG9B
 bjHaQeuqbz4sI0NoFYNsm6CSlN9RmsZPoxfj+xDIbapZbChbjilJ2m7GGncMs20N
 Jk3phLBQIRRHb3dAZtZL6zoF6QlbL3y6lZ2AnklPSwrB2xz2YcwdiEgwp02w5uXu
 qvrC5uw1lUeLSVWHuwQ55AXFfz5zOinmXvQgAXZHqfvTW3/WVZlol2YIWPE4vR0J
 tpkuj9lug1NBzBJn/yQIy+o2SMA3JClJThONIoMZSdGlnypeyyz1XNZLLhdIZH+1
 BMZGhuzkOUx9NYzWDecJsdchfvyxrZ9IpuAUpvm/0vP+z2UkIwgg0j0PjtiV3FaT
 niCmGtG5nYujcRAw==
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id c54b9373
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 16:31:01 +0000 (UTC)
Received: by mail-ot1-f45.google.com with SMTP id r21so19687288otq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Jun 2019 10:03:25 -0700 (PDT)
X-Gm-Message-State: APjAAAXzFCzEJEb9kiv/6MutLy4ZdkBgklYdeYJ6Ygls8jNIDI1jNyGm
 WUZLI9MPgvMsW0gu5b9HcvkcCZBigCKUxQe5lBo=
X-Google-Smtp-Source: APXvYqwtl2JJDkqI30n4+ANYJzLJ6c7AVUpnMwMaCK8MzFG1h4OwexbwbWd6Bq6YlRzQ8yXFmAud0QT72VNsUE9HX+k=
X-Received: by 2002:a9d:5a88:: with SMTP id w8mr6898138oth.369.1560445404784; 
 Thu, 13 Jun 2019 10:03:24 -0700 (PDT)
MIME-Version: 1.0
References: <20190529182324.8140-1-Jason@zx2c4.com>
In-Reply-To: <20190529182324.8140-1-Jason@zx2c4.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Thu, 13 Jun 2019 19:03:13 +0200
X-Gmail-Original-Message-ID: <CAHmME9rXqA3AwM0=RVMQ0-WFN5OUw_wMvWLOV+6jCDZ6zt51BA@mail.gmail.com>
Message-ID: <CAHmME9rXqA3AwM0=RVMQ0-WFN5OUw_wMvWLOV+6jCDZ6zt51BA@mail.gmail.com>
Subject: Re: [PATCH] arm: vdso: pass --be8 to linker if necessary
To: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_100330_851140_DA205B85 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.95.5.64 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Masahiro,

Considering ARM big endian userland is pretty badly broken without
this, we should probably have this merged in the next rc or rather
soon. Was there additional information you needed? Would you prefer
Russell queues up my patch or did you want to make further build
system changes?

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
