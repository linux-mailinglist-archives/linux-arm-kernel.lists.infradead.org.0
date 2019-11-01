Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4916CEBC2F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 04:03:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j8BEENiBKXVpO+dY2gRDB336dVCrgiVniaGvtURLJos=; b=pp/Ms0479Brm5W
	2ccUne/UNcNDQWnHCN36f2RPRDXIqu+yF5jg4lwC3dE3m6PgaZIkaQo1OEXKZvY7r0CZkn9KhGiN2
	qwT5c+wpNbEOI6TmZR/Q8ZpXPoan3ltq+s6ENfB9EZb202hdiGUxfry45xPeaqwCv1ystEa8Fr4HG
	nMpqK8IfODYwtTG0+ClFBdqDWg2EyYdGGElbMw3mZtB9Z/TCqv7UTvZTMkS0O1utgwE6RQ6Th33c1
	drfmWjbc84WaWtXwaMI9kaQSwMOPD9YL+KgTPaJatf/QRjXtCZQSkri0t6oyfWd0dSuee7J5Q+wyY
	Vs0bBLjitw/gU0ot1U7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNE0-0004Lx-5x; Fri, 01 Nov 2019 03:03:44 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNDm-0004LK-67
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 03:03:31 +0000
Received: by mail-ed1-f68.google.com with SMTP id l25so6511389edt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:03:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=E3Ouz8MYdv6MVhyGpKyVx7KVTwv3PMM5rhYzr4+rqe0=;
 b=bxhDsZrR4D6M0paTZH13BBItuoDlRfRF07ZXe6nE9agfL8sbnBuNMPzReU1LT5i+xM
 K9U9eEvDPzAEw5Ks/MnPzsz/nzB0aWa8m9hdYy9uzEHdVBQpUI35oU9M4zvEbQv6I/M2
 r7FWr8TDYy6Cvgn26TldWaHkCQvPp0VVFMhhYGGxwKZ9lYuMdFhboIgXGkWWqxqzhQ9v
 x9xGJMO/Jt2hTyRCGa4MTcM1AqpD0nO/OYu7tfTwIYvmvHaOh7kG6FyqJMIV736s2yPH
 fFDYol9hRGE1XNnpv53tN8mOk8uoh8BxmAdViFNQ9NelYOyu3DpogTh0vz0i9jyz5aWC
 iTCA==
X-Gm-Message-State: APjAAAW7QimbSdcSS1HmQN4CPp4qXixHy9PwWEIkm8sTBMMp+s3k1Qwz
 8ljA+ojiNRzALW7o+UXowyq7PVdo5To=
X-Google-Smtp-Source: APXvYqx5A6GqgRY5M4X27RzE61jKF8w5F00hz5WNyw9RV5T+0UyBvG5KFwPS9CJIxbFX7CmCyQ+5NQ==
X-Received: by 2002:aa7:d6ca:: with SMTP id x10mr10130648edr.27.1572577408204; 
 Thu, 31 Oct 2019 20:03:28 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com.
 [209.85.221.48])
 by smtp.gmail.com with ESMTPSA id p9sm21942ejm.56.2019.10.31.20.03.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 31 Oct 2019 20:03:27 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id q13so8351052wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 31 Oct 2019 20:03:27 -0700 (PDT)
X-Received: by 2002:adf:c641:: with SMTP id u1mr3392231wrg.361.1572577407549; 
 Thu, 31 Oct 2019 20:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <20191031231216.30903-2-karlp@tweak.net.au>
 <20191031231216.30903-3-karlp@tweak.net.au>
In-Reply-To: <20191031231216.30903-3-karlp@tweak.net.au>
From: Chen-Yu Tsai <wens@csie.org>
Date: Fri, 1 Nov 2019 11:03:16 +0800
X-Gmail-Original-Message-ID: <CAGb2v661sfnYmU9k7R1c7Nrc7_9-LkH5LQa9dvyPVZLGnLfaHg@mail.gmail.com>
Message-ID: <CAGb2v661sfnYmU9k7R1c7Nrc7_9-LkH5LQa9dvyPVZLGnLfaHg@mail.gmail.com>
Subject: Re: [PATCH 3/3] ARM: dts: sun8i: add FriendlyARM NanoPi Duo2-IoT Box
To: Karl Palsson <karlp@tweak.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_200330_228375_69C9A650 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Maxime Ripard <mripard@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 1, 2019 at 7:12 AM Karl Palsson <karlp@tweak.net.au> wrote:
>
> The IoT-Box is a dock for the NanoPi Duo2, adding two USB host ports, a
> 10/100 ethernet port, a variety of pin headers for i2c and uarts, and a
> quad band 2G GSM module, a SIM800C.
>
> Full documentation and schematics available from vendor:
> http://wiki.friendlyarm.com/wiki/index.php/NanoPi_Duo2_IoT-Box
>
> Signed-off-by: Karl Palsson <karlp@tweak.net.au>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
