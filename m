Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4BC96EF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 03:36:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62IEgnU0o2++DJZagO/ceuMhjBoTQBkouRN8QbjlvbI=; b=Hzg+KvzoBBr40G
	/4pVhEhqnDOZGQieTi7vGMyzlrFuYnLIR96iQIOS/qNRSWqC+RnrUrrwbKIL4ybcLd1j558OvM/QT
	4zOa0h+T35Ji+CWQkF4v7pDGKo4OoAgkF+iqvFyH/wpAwb83anaAFwhxhizFPtHJVGQeQ6st0MUIa
	eQYo/UeODb3+zq7iv2vsq3+l/Omnv2PNZovB9SJhRjiihGzewkakJPHwqjTTXh7xy2uLatJg0+ozW
	itMs2xDnV4sT0OmyOnI5dBqifHliN/EHRk6SDTdUluVzD4femupFKnJD0L/7Vg1i89OVcLf+7Dl8T
	U0jyUfRUviMCvUD9FA/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0FXf-0006Oq-FA; Wed, 21 Aug 2019 01:36:03 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0FXX-0006OA-Il
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 01:35:56 +0000
Received: by mail-io1-xd43.google.com with SMTP id j4so1275058iop.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 18:35:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZDgziPohWADEElmbUwXxheNxG1YHZXMADSP7m0rXEeM=;
 b=TDro1+YOlLRwEz2x+hVIva0NLZYpDkw3j6J/eDF3Hi98b1r+Z3u35q2AKgmdeacGhM
 2XKwKFQPXHWH8lSSJQNwFvrPa20kWXAzZr+ruKlkZmdxiKKxTE6fOwCfH+wMTI2xSX9K
 6tfNv6efBXqYkBavG8PB+p4aLfz6cL+Bh/00xe3T4ZibXeo/Ub5B9sF+2AINBHF9agcG
 TogAsURqAWC5l6AKTFHqyrpweZMgZKmSm+KkXT926gKOyqKWcSNB3jgX9t3y7f9VigIH
 tH1Voekk3JuyeBXs+74IygFEjxl/+CkyKKIgXIF+1g03uy4t0CkM3zKg6xL2l6BBlt0O
 yThg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZDgziPohWADEElmbUwXxheNxG1YHZXMADSP7m0rXEeM=;
 b=aXDQiuECsUL9fuP1MonyAalLXszpZgRPjn7/pCZZQJoqQeP25VDL2R1ncUQtaAx3Df
 JNkDytKNmv+cGcshgSGM0wzxyPY4Ce46NPn3ArDAMVP+aJETVlL1UdGji1EQSZ8ERsEj
 4TI9qxaKL2KuoGN8FkKRyGX+BW47tUHD7KkB13NmQd3THarYFg7z1UmRPbWOm9Z4G4BP
 o+A/mDV+qqD4p+NUMgFjI8pAAbyFSYgN0Ljqoh4ZkduV9pVza9YjH6SRmwd+ymHAEoNc
 qZyXB5KvlZO0Tn1GkL1IsAQaOyAemENMO6USXaPOu4ffZU4yD7brw0erfIoB2C6fTnP+
 +L4A==
X-Gm-Message-State: APjAAAXQSuT4ODXEjYLoVIe6XBSg9+zVqkv7LgFp4NFL0RCHqIhOGGZ9
 rp8OAIL8vueEULUnTglB8yNIROodmLgyq+ElAJM=
X-Google-Smtp-Source: APXvYqzGkWkC1ql6DLZKPAVJGxobBSSWVEse2A37iCP/RxU0eQUfxK/dzMTVThVz57XsmXKb4DJnE8wZpvnDg7w1K4M=
X-Received: by 2002:a6b:720e:: with SMTP id n14mr37064857ioc.139.1566351352532; 
 Tue, 20 Aug 2019 18:35:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190820030804.8892-1-andrew.smirnov@gmail.com>
 <20190820152928.GK29991@lunn.ch>
In-Reply-To: <20190820152928.GK29991@lunn.ch>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Aug 2019 18:35:40 -0700
Message-ID: <CAHQ1cqHhF6_2Mx3B=w7GEUWDa0RegpUwe=ETCr71PXsDjKRJDQ@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: vf610-zii-cfu1: Slow I2C0 down to 100kHz
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_183555_649161_DA3AF515 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Shawn Guo <shawnguo@kernel.org>, Chris Healy <cphealy@gmail.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 8:29 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Mon, Aug 19, 2019 at 08:08:04PM -0700, Andrey Smirnov wrote:
> > Fiber-optic module attached to the bus is only rated to work at
> > 100kHz, so drop the bus frequncy to accomodate that.
>
> Hi Andrey
>
> Did you review all the other ZII platforms? I could imaging the same
> problem happening else where.
>

Yes, AFAICT, fiber-optic modules are present only on SCU4
(vf610-zii-scu4-aib.dts), CFU1 (vf610-zii-cfu1.dts) and VF610 Dev
board rev. B/C (vf610-zii-dev*.dts[i]). Of all three only CFU1 has
corresponding I2C bus running @ 400 kHz.

Thanks,
Andrey Smirnov

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
