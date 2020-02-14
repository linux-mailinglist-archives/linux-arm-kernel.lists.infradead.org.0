Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795FA15D606
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:49:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHnjCgD26CLLUM3JceQ419AMWlH9BeV8JemSy0iw8D8=; b=iGYNd3X8TJWmYG
	iMgOI3ztIi6YqsbnDOj3XJRR2UdNtyqnKJq/Bzph34zvuFMlqAmsw5QOCFcjcZHcsrCUv8xlq34Oj
	bny2lSkBRHDHVFv82JjJ+bn9Ik1QMZbTGmp4UPWr5pWO6LTWFANPOpzztYopDCQnSaxWXYsKA+GyW
	sB1qh9+qGNqtv8USX2DkrDO+AWvktGOkKQhZIa4ArM7TmSoGwWwUU5bEajXG2X0t9Psd77gEehU3C
	4XUw+1Va+Cnt7dL8VgrzzoA7NOYfFGWj787zs0rq+tpWAVdhtUKq7ViQT47uIInVavjPTneuM4vNe
	83Qf+9o+tlVRUFZYc1zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YX5-0003E9-4j; Fri, 14 Feb 2020 10:49:15 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YWt-0003Dc-SO
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:49:05 +0000
Received: by mail-lj1-x243.google.com with SMTP id q8so10155121ljj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:49:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1i4Q6/1RsyH8dGZF2vprm22L1oxGHlOcnNHReqoF9A0=;
 b=Ts4DSDY7UpRHKDbUuCSly0SJGu9e3cuorS05YoXAWoiHfbT6gDZLHgtavc4t6uYro2
 Jd8tKZgAGyBhN4SCSktaIRL6q1pQC6cNsNrG/hv0z/7DiwEjLZOuQG4ZMWSlDutuJMXz
 odHlhJ6Gf6gUix4lqMvr+gIMmhodCE0+cEmdy8WwSmZUPu8Gy9rRYcvrduPsfERBkXcf
 vgfVsRRfU6q7ad86bLwMrzpnaqLPKUpjHyb7QxWm8oLMUpszmFk2aq0scMy7Dc+yRMlb
 TpmDpcBxPHLReyZNxloQ/XqdAjdMKu9wStXmE3ts8+fwSi/F52kjw6t1YMmk8mZ2MBUV
 PRCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1i4Q6/1RsyH8dGZF2vprm22L1oxGHlOcnNHReqoF9A0=;
 b=CmDCcmVWjs3FkrLJUBc3e7fejLg3LTRXB2gJILr7VFHJ+YfZHzdFLulBXw0Ftd/r6x
 d6qRr+OliE8wOuYhZlqKBZi2Iaz1kcIBru8sAx40yX/rPBVfbWCtCpjsGj6En+KfmH5j
 QAqnVWMpWReq5uesKqhlupP8Dl1y0oQ0LP3BMQCGTwUd1cVqg9+NiWGN4XW5ddTOH+ei
 8HpuEApfZPoc1QNoboA1/YUecXMsgc2RBEvk5P8G6rNc4mEYN7zFdy8Bd9L22sU/WnNk
 gEzy5A3XOWwZFPM/GycvhbxZliLeijqj3OhVfBwwK3mKqR1LZK8fU0gn5pAHosRaCgV2
 k6nw==
X-Gm-Message-State: APjAAAWjJtXYvbQ2zzf08d552SdWau+CQnIR73hS4It05EBtlISdprXN
 OInwjfcPi2vDIyXbqFumu/nfB9J4nw6w+ztgZkflHg==
X-Google-Smtp-Source: APXvYqz+6XkhlYSkMAKGVhZEHaoBs4DSOaPtmDqULEN8Q7rW85h657r4NxLb6Kf9TtTlfZhQ2GV+rviqE3OrEyKx/q4=
X-Received: by 2002:a05:651c:2c7:: with SMTP id
 f7mr1665644ljo.125.1581677342094; 
 Fri, 14 Feb 2020 02:49:02 -0800 (PST)
MIME-Version: 1.0
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
 <1581166975-22949-3-git-send-email-stefan.wahren@i2se.com>
In-Reply-To: <1581166975-22949-3-git-send-email-stefan.wahren@i2se.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:48:51 +0100
Message-ID: <CACRpkdYKNYaLcy4T=CixZSkzP6wOvisFt_H_gqhEoANz2Bm4KA@mail.gmail.com>
Subject: Re: [PATCH 2/4] pinctrl: bcm2835: Refactor platform data
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_024903_917614_1122F349 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Feb 8, 2020 at 2:03 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:

> This prepares the platform data to be easier to extend for more GPIOs.
> Except of this there is no functional change.
>
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>

Patch applied with Nicolas' Review tag.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
