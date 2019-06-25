Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E13654E6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 14:10:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jg+7odiWMHODgugdTP/By+oXgxVjWFVroYv9yVX7Bq4=; b=MWO7t/Vt7Wec1U
	poR/oxUPZKOYswXZqF8LIcAB06Oww1LtCu6d+aW4yOT6BHM/H9QkUvfsM5qzZ/rCRXFAiMwJaaQkO
	KEIa09WOCf6bKLQ7AiPbZgu0+2n8oESP3jRuVcnHo5qbfkZZW1+zPd4PyjV60Bw6vo/vNsht8TJoZ
	HUXrdySezWtjHdOlxJaGRxDsdZUihAo1UgpYghnvxoK32XUGF4A03QFb8BZIp5BQcXq2Ja8l6hdyy
	HNtcNUBWGrc7INdFdfmY3r6XhAmy6MlsR95BldjoYGZyg1z6J808gqPJeHwuYtPOLkwIRscpnj3fp
	xzbGLwEtAR09sAVMeIaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfkHE-0004vZ-8R; Tue, 25 Jun 2019 12:10:20 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfkBg-0008Uq-Ql
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 12:04:39 +0000
Received: by mail-lj1-x243.google.com with SMTP id v18so15976526ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 05:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lixom-net.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=FgLLHR355y81+FuoQSsOM/HBX8V3lyxm9WVK5FPDEWQ=;
 b=yqAB78Q1S6zQ+2UV/1HtwLqfqGH7CsH2gycUdrerRjeErHsvqef06vS7Dlv7xTbUvz
 ZYyYmKklPqj2+gtpHkeZIL7H2vB8JiwUFmlZfRWBh9g9ghThd42y5Ni4Gj+VyV20+JrH
 BCYPvJrUHloRSjldvvjE/WJVuswwb3UKeOifFkcuTJcNbGae4gUjmaluj6ME4rwaYm1v
 0vMVOAqB7Ne4SgV0ON5cFnQWhm9i17V4LCwPy7mpbwgzlyFTWFE6UfEeCCgzx5GLMqif
 cZqSozGMZeZHvdvf7eylb8yiKn4npF/UJmVE4FjxSVzhfL0E0fH5niLDk9FT5mipbUqq
 RAyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=FgLLHR355y81+FuoQSsOM/HBX8V3lyxm9WVK5FPDEWQ=;
 b=HKhDKG/l2rmtXiKz0E0b/39O0djWhOUhrxwPor6lxBj2HuSkKSecOVejAeFy29ihL9
 RvrYmjIxHdBgoVRBVOs7JkW2rC5xsjvYz8cjr7UuB6FQxP+mLXKiWQE+GVz2+X2tgoig
 ddb4cknAW3Tvl3IriOvwI2kqlK4wA1R9IiQR46Usl+ivJ6QXAFL095i8bPFYaqP55fij
 oRg7h2UIVqf13T0jLvN9rHSitNjtDUCQ8DvqYV75F67ifZTqQkEc1qzxfuXhdcuLoOsb
 HCWBiYhAfLCvYx8i+xAPnXt2pp0/VvYMCsTOW+ga+awBpS3uo7H9BlfHwpZlSFFalOzW
 0TuA==
X-Gm-Message-State: APjAAAVZNGlvVXigEqcj2Eu/nJapx6i191OvhQWKuH6+M8MZKK4q94Rg
 xC39FzuiF6FcyNcv4yKECDM73w==
X-Google-Smtp-Source: APXvYqwuPPTpgpeoKB4JPY8n/JN0xIaGttIU7LfrQ0VRUCjtOqiQWknf+3GZfVtT2L6q1eDLbT0jlg==
X-Received: by 2002:a2e:968f:: with SMTP id q15mr20167684lji.30.1561464274970; 
 Tue, 25 Jun 2019 05:04:34 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
 by smtp.gmail.com with ESMTPSA id a29sm1934702lfi.23.2019.06.25.05.04.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 25 Jun 2019 05:04:33 -0700 (PDT)
Date: Tue, 25 Jun 2019 04:32:22 -0700
From: Olof Johansson <olof@lixom.net>
To: Andy Gross <agross@kernel.org>
Subject: Re: [GIT PULL] Qualcomm Device Tree updates for 5.3
Message-ID: <20190625113222.z4lp4b5wjnqhdxay@localhost>
References: <1561006911-28519-1-git-send-email-agross@kernel.org>
 <1561006911-28519-4-git-send-email-agross@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561006911-28519-4-git-send-email-agross@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_050436_907970_8C8FE5C6 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, arm@kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 12:01:51AM -0500, Andy Gross wrote:
> The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> 
>   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> 
> are available in the git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/qcom-dts-for-5.3
> 
> for you to fetch changes up to 489bacb29818865d2db63d4800f4ddff56929031:
> 
>   ARM: dts: qcom: msm8974-hammerhead: add support for display (2019-06-16 11:27:45 -0700)
> 
> ----------------------------------------------------------------
> Qualcomm Device Tree Changes for v5.3
> 
> * Add display support to MSM8974
> * Add display, backlight, and touchscreen support to MSM8974 Hammerhead
> * Update coresight bindings for MSM8974 and APQ8064
> 
> ----------------------------------------------------------------
> Brian Masney (3):
>       ARM: dts: qcom: msm8974-hammerhead: add support for backlight
>       ARM: dts: msm8974: add display support
>       ARM: dts: qcom: msm8974-hammerhead: add support for display
> 
> Jonathan Marek (1):
>       ARM: dts: qcom: msm8974-hammerhead: add touchscreen support
> 
> Leo Yan (2):
>       ARM: dts: qcom-apq8064: Update coresight DT bindings
>       ARM: dts: qcom-msm8974: Update coresight DT bindings

Merged, thanks!


-Olof

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
