Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE88D9A83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 21:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=H7jywfXIyy/6m9DHr87HKTjqn/Q0tPiXDFg99iVO/w0=; b=DmR
	iam/3omQ/SWK/Ae65UwAPZxlsMNCyLETApQpZfHMgo7Wp6cd3z2e5ZlTjl9VvCQCGdOcsl5TL0pyf
	mdWm/MXeWD+VQF0dLvmOtMQnwCYLzrcpQfz5WCuA+0pmiRfCV/DHNPgyiSfbjKl9Nj+NVuDaZwldR
	YPY/6xjTwF/SkZHf9bN3T0nZ4QNrxW88akNvLL999diIiIgUvbQ0oTkSdqByMgD7UUpyuAJ2rEGTG
	iv6b0iY/oM7JuK1PZjZgssl1bx3MVRvp91lwS9Q90TUSX+pFw+a9STOfOF6Zycv/m1265PyFQ0xQv
	t4Kd5T3yU2/griYacGQKaI/97cOfLKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKpP5-00028a-Du; Wed, 16 Oct 2019 19:56:15 +0000
Received: from mail-il1-x129.google.com ([2607:f8b0:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKpOx-00027k-JI
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 19:56:08 +0000
Received: by mail-il1-x129.google.com with SMTP id y5so3899468ilb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 12:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=h/P3JA46kWkR1ok83p5Cbw7TV2607e8IBxUrOI+c/JY=;
 b=Sum1X28FKUFNIoD0TNCMnYgp67D/UN5XOavrIbFzvM2OhQqxcIp0ZcOU/WPmuTG97l
 WrFb0fodakzC54W5Ff73sJr/YUykiA4jcILXc/kv0/7pBCt6XjQQvcQShAf2pTNkF6o+
 b21vOXJhCIT/oiuwPd8iHKE9yOGo6CLKbT7sHkiElIe0Ryqnh8hmtoj9j8xxRU9s/HGz
 VNKIigtDHhmedxxSla4gD2d/jwbsRQ7Vw1mIAq+CgTUZHQ9iG/79+BjXsZWv/g+GnZI2
 R0JgYpjCuJqBF0TpAMWyBzyc69+1ffJpaxnK5gNrSrnGa8HFzJgBp3IxJvIozwH83w5Z
 DDHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=h/P3JA46kWkR1ok83p5Cbw7TV2607e8IBxUrOI+c/JY=;
 b=LiLhy+VHYloUeyTie9w1Cly2+1M2lcrSVbDzuZxxmk/jXQSzOMUayrIXIcZMr8+Z0G
 C0Ng/2XHX33j8hFk3uL61VeXS0BI5sI/GvAI7gmTsCjYUrnm+VGRyE7Qzp+8RlSh8Jg4
 iW18VPqL53TcU9/UaUCNIFqs4JJumO/mo+TIFvraNT7JFZUh1y6Cx9AeRaqyO+D8QwGr
 1dcWGr954T0etAo59BOPE6ZwNPoVIfdJoj/4I0eP3xFIGuVSshJISVKLHUUz0l+Iunz7
 k4oufP8GhLlKqo77vXBPQFY4x0oEzOWs+jvGR9oc5t3PFd7sxBplVIrKwL5yeMuMj0N4
 Zpow==
X-Gm-Message-State: APjAAAW0gSa9J96q6sCpS4/8KEeWMM7sBDS7X84kyYMJz2grLedQVNFO
 58upMBqzIbZ71NVnxtCmOstfXuXsni9E77P33/MwDojP
X-Google-Smtp-Source: APXvYqwWRSTsjGSsfAbBn3FBmQk3IwJ5gHMMJQp1jBBJhZxZT6EEM6o0ey+7Uxf6QgNXcqBvjgCmILXp3weYahkWuSM=
X-Received: by 2002:a92:5b98:: with SMTP id c24mr13115016ilg.158.1571255766169; 
 Wed, 16 Oct 2019 12:56:06 -0700 (PDT)
MIME-Version: 1.0
From: Adam Ford <aford173@gmail.com>
Date: Wed, 16 Oct 2019 14:55:54 -0500
Message-ID: <CAHCN7xJSz+QhOb4vE6b67jh5jnSOHnw79EyX8RW91TqPkD__Lw@mail.gmail.com>
Subject: pwm_bl on i.MX6Q broken on 5.4-RC1+
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-pwm@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_125607_635865_00D48C01 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:129 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I have an i.MX6Q with an LCD and PWM controlled backlight.  On 5.4-RC1
through the current master (16 Oct 2019), the backlight does not come
on by default.  I can get it come on by manually setting the
brightness, but any video activity seems to blank the screen again
until I change the brightness again.

I bisected the patch to 01ccf903edd6 ("pwm: Let pwm_get_state() return
the last implemented state")

If I revert this patch on 5.4-rc3, the issue goes away.

I was hoping someone might have a suggestion on how to fix it to play
nicely with the iMX6Q PWM or revert if no solution can be found.

thank you,

adam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
