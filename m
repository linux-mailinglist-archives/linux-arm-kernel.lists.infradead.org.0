Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1BD772D36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:15:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmCwKYkrYRKkT49PD7ZswN85zW517tu4cYzs2LIPX9g=; b=Xwo+COOA+DwNxC
	ad9OxZHrjCWn1cVRizIv5hUWXiLB7PPe7nQnwmXsExHmUJGukiGYmiTLtrbHb/5MsBc10EogHQzR4
	CDYPayXkLKF6QX+oM47A+2SaLMWmTmLuz692O2Vw+bhpdvL4QzFrIbZoQLmm008EfHCsY9anhXWap
	xf5y7Hv8Wilc3rQxmUcAw8jCP3Mq9n7Ssbdt6vmcZW9DK0dqOmTt/dfGLokoRYSg8OthLb0mOzRJN
	PQuJdgcBIDi/+Qq3PAD95vFW9OEGjLpdhfDUALAfa4BwGurIK+OBTnQmsiXqFo/X8r5qd+wcbRtup
	R4VlIpTEh/kQtzAGqsKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFEY-00026g-O1; Wed, 24 Jul 2019 11:14:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFEO-00025g-Oz
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:14:49 +0000
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B2BB22ADB
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 11:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563966888;
 bh=QGWMl/ZXIY3EBLMtFI0LO4scm1QA+Ep6PNsO6TEPOnw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=qy2fqq3YJ0ckBc2x1bZmZCBCWFVM1L0iOXOd72aaiaV+I8MGIrh0AMROvbtDUEaGj
 VWn+C8ssNCFc0dLEI807dKPj/qrq36JLcbYScchmTXd861JWHW0Uhf7mvW/GFD3Wmy
 YrEkhvsApgpPuuE3PTOqvglCvrKM6v60+rwaVXAA=
Received: by mail-lf1-f49.google.com with SMTP id b17so31694274lff.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 04:14:48 -0700 (PDT)
X-Gm-Message-State: APjAAAUOxLJCCTJJzHV3U95zJ8iON5uSkLmPjXGZfX7ro2zP95mDrvgz
 JR6cywbAC+ejSB1vceVli1l/VzE86NDIu+Bcxpo=
X-Google-Smtp-Source: APXvYqyUmQ9tuUPElU/IV/IsqbXN/eGafRTyiXc6riwgNXXXlmd4X+4ShRqwKBSQLVxJZZxnCtrTPH9bFUEIeuhSYs4=
X-Received: by 2002:a19:f007:: with SMTP id p7mr37946935lfc.24.1563966886458; 
 Wed, 24 Jul 2019 04:14:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190722185938.9043-1-linux.amoon@gmail.com>
 <20190722185938.9043-6-linux.amoon@gmail.com>
In-Reply-To: <20190722185938.9043-6-linux.amoon@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 24 Jul 2019 13:14:35 +0200
X-Gmail-Original-Message-ID: <CAJKOXPeRjg3tz-o+_cZ=Xy_ALOL06nODeKbthdrvpQqgYpXhOQ@mail.gmail.com>
Message-ID: <CAJKOXPeRjg3tz-o+_cZ=Xy_ALOL06nODeKbthdrvpQqgYpXhOQ@mail.gmail.com>
Subject: Re: [RFC/RFT 5/5] phy: exynos5-usbdrd: drop duplicate setting PIPE3
 tune signal
To: Anand Moon <linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_041448_834712_54027E62 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 linux-kernel@vger.kernel.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 22 Jul 2019 at 21:00, Anand Moon <linux.amoon@gmail.com> wrote:
>
> Drop duplicate configuration setting of PIPE tune signal.

There is no duplicate set. This is either completely wrong or put in
wrong order of entire patchset...

Best regards,
Krzysztof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
