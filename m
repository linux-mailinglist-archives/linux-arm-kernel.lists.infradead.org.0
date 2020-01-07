Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5E113255B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9qdRi5qXuIxnQ+deL9bhZ3ngiVuq9T0CUgJqwjei8U=; b=T7B+xyXZO3SSJ+
	Py9GHTL4oYl0ujz3IWAWr8BzoWTLM26VjFoz9MVAwNrA9uV5aiU/BqxEmNFh4er1icNiLRhQA1WWT
	7JqYlionz4kh5suM/dGgKftg2YfdKv5t6UrXaPsa77Nbzuu8NVf4NZjsAz8ft+3kfPauDPTuKgQ1r
	Mz4pmvmK1wM4i32jGkCIXwe9s/D3Z5iN8uD3la5pn7gyLYS6Ajd98hzhTaFIHxr6tGJ0zC2cOfnxu
	fjz5XzXByReyvm57DCCKTJ/abchvMoUhHBWO2ebuNlFnDdPMRO8FVcIO6EqcuTFgrti5SZiKp28sK
	3XRB263nLDCVs2CPGdPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ionSW-0000Xn-Mr; Tue, 07 Jan 2020 11:55:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ionSO-0000Wi-0q
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:55:33 +0000
Received: by mail-lj1-x241.google.com with SMTP id a13so54405959ljm.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 03:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=srVCYWN5C5Eufk05htqMAJUHJORyKr0Vlz9Det0daS4=;
 b=x4W09e6W3tYzPFUA5L3cocu4C28m1vu8wvfPIVtcJZVrttySIpPpOBOxScCKjuNNRn
 OyhMcUwnM45j1nxRiN5G0bCuRyxa4OO8QJEjgJm87+mAfYD5ZXWyADDY2k/7fKinA+yq
 x46qgZYWT1cXuXTxyoTLqtgueith2idAaQl0QpKpm9DWWQXeyE7d7v7jS/oNr2UiSKNN
 m6C7X0ok2d1rKs8X7I64wx/UnFvv/rjXO0HEkKEWuEkCZIwA3EBJDQUcZWPjo67sFJae
 VO0hAUkUiwdg8Mxsg7FFAMxrzsisTkn3tAyhmQKML6FQVwKQY2O4oh24yPneCrUoCJYv
 UMaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=srVCYWN5C5Eufk05htqMAJUHJORyKr0Vlz9Det0daS4=;
 b=Ax4ggZEGibctQac1QbmqY/DGj+cCLLPw+ha7ftt8KnUPsej5NyxZbBKZPZFZXm+j2H
 aVmuC8+SRPMKltOvKDOQCk6af4IPLJVZOtCIVJxxF3td6da5G828aRKApXU4osi6S9n6
 nlRIMFs2MLLRXBpHmvANQ/JYKRN2kbceilpGeE3Fbermuw1rgRo7CzO8AVNw7h+wVNdL
 cqTDbkK1bgmRqmJLZSF6qWlytAS9ys+I7F5MnhIkY3A57txFv4q58SLZopj4kbXHLr3S
 eLhNPwEaukxMt5IWXZfrtEYiB8qmnUDhq4fmqaElvSH/TIi3miyQ9H6UVe8asu5g+mA8
 d09Q==
X-Gm-Message-State: APjAAAXTdjf0nMHO/iUfdt5abDnAGhc2tIf/4BSbs1LCs1sh2flUgun5
 Ix16f5jaN3DtLi6yf8pAFHk5WHfSehV27bBV7oJuMw==
X-Google-Smtp-Source: APXvYqzkyD6g7/9CDAlHtA5mKWWnMz52PVnTB6MFjhAOLT8GCecy17Mok8VzpbjzK10JRhbJp55ZQJQKlRcjb1WeUVc=
X-Received: by 2002:a2e:9587:: with SMTP id w7mr60523035ljh.42.1578398130000; 
 Tue, 07 Jan 2020 03:55:30 -0800 (PST)
MIME-Version: 1.0
References: <1578052177-6778-1-git-send-email-sricharan@codeaurora.org>
 <1578052177-6778-2-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1578052177-6778-2-git-send-email-sricharan@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 12:55:19 +0100
Message-ID: <CACRpkdbjjzwdEgsDV2tGea0t3AMM_FRSd-Um3+2BrYDTGKoNxw@mail.gmail.com>
Subject: Re: [PATCH V3 1/5] dt-bindings: pinctrl: qcom: Add ipq6018 pinctrl
 bindings
To: Sricharan R <sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_035532_199071_51776E37 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>, sivaprak@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 3, 2020 at 12:49 PM Sricharan R <sricharan@codeaurora.org> wrote:

> Add device tree binding Documentation details for ipq6018
> pinctrl driver.
>
> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>
> ---
>  [v3] Fixed the example dt node, inherited properties

Once you are done with patches 1 & 2, can I merge these
separately to the pinctrl tree?

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
