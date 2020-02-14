Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF57D15D55D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 11:18:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sG1GqS5fiL0BvbdpGBWJu0sIbOOPCIndE/3rKy/owU=; b=oFj3ax6zi9LBXW
	etDdTCTQ/gtCohpoyPAKdMoZRjdaxpc7W7Vy3SlITQ09zOzIMprnjOCvXgiu00q0xYpZufsVZcB57
	LcMTJ1ZEKfaEEf9/CuZRHoQOOuppsyKCJKp/uNW3M3NLebGWVXOZnhLIpts0Vyue5pSJhGAaOLdJI
	x69XkBmzOaGnm73GpICS6bYGwcZp8xtSdXUDcsH6uhPjKkvoaX9Gl8t6JQ3qF8MvRWi88jnw7TUjI
	3gQp8yyKv/GjlXmMw2q0AH/MuBk6Gih/MaLFivNbI4jFm7GFPBWMpbknjaGAsrUrYAkU0ZG8GgW6a
	23Ti5ndMWUgdbCgS9Zgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2Y2r-0001EW-FS; Fri, 14 Feb 2020 10:18:01 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2Y2c-0001EC-Rz
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 10:17:48 +0000
Received: by mail-lj1-x242.google.com with SMTP id n18so10099568ljo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Feb 2020 02:17:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=v8ypgl7dFd+FN00YxlfzHIJKl3YchrCCrbKgFjCVTDU=;
 b=MNxQ+HuCDY088dTom9PFOh4rxyHd576KmzzMsyWnYhyp0UpgWA19L6Nitp2AQc9dOy
 Karscw08YlX4Dg1W61ESUi5f/31NGIDZm4EqIus9tIQf+O5M28Y0jyTAuo9dR1Y0H0rz
 2AVAJRbtO9yn7RjFNZXS30hjpVKDSBST7Y0jgBDL2snZDVKS2dRMHy3QacypQ2LxKwZV
 trk4g/jfx145+VkRAcZ465GPkGogpEK8AuFur1fwyfBP6l7dThSPi/EbX65bqU7Qi44y
 VyHWfpFOgYhi74jRlwh6ixM7165ALYt30ELZoP2vcFxOIAzfaRAipnLZObe3Kz/Jmo8W
 S6uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=v8ypgl7dFd+FN00YxlfzHIJKl3YchrCCrbKgFjCVTDU=;
 b=KBUCcoNwmk50dHpJS/wzn7Z0ZXAYtE1hlWpqXWpwCsVuMhTh+k8GYqVyJrvFRHA+gc
 R33J4rfwRGob0XH1AaKhI9KGHxKdLZZLt451VOl+6z/TPjNHqKh4ssWA9eXOyRKl3oFG
 RnKjrnGLi9TMp+T9O/SAEULnC2LblgPqkTEK8dzG71Mz5Sivm/mDFQTUA3sa3Vi5du1q
 3O46QmihUNuWHu3M8oShOKN5aBANN4IsG/pg6bh9/x7c4/9fzc0i12yKQU7KAk3iE471
 LFXyqsztFe4QBpRzIjm5G5CLZuAx7P8CwrSLfLqZagixwJQPiINUkVm/hMmkta62nz/X
 IqQg==
X-Gm-Message-State: APjAAAXwL9KTWSGGA5t66u+HnKj9/u4sDjlKgUKnWev3GwGu8N0SwR8g
 JPzoF099hODPtEYP7BWXcc05Q69V3zyVoGrS8XiFkXqiRgY=
X-Google-Smtp-Source: APXvYqyC9kNfFIiiOrwmF4acw1MAKutkTjdFGe1E/MwMDJJksNCwGjs1TmU24KDB/f98Aqw0M3pRNognuV+WdjgeGVA=
X-Received: by 2002:a2e:9013:: with SMTP id h19mr1678145ljg.223.1581675465087; 
 Fri, 14 Feb 2020 02:17:45 -0800 (PST)
MIME-Version: 1.0
References: <1579439601-14810-1-git-send-email-sricharan@codeaurora.org>
 <1579439601-14810-3-git-send-email-sricharan@codeaurora.org>
In-Reply-To: <1579439601-14810-3-git-send-email-sricharan@codeaurora.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:17:34 +0100
Message-ID: <CACRpkdY-O3es1xcPxnb+3KKucUFx95WDXawnKeq1fo0rX9N+3A@mail.gmail.com>
Subject: Re: [PATCH V6 2/5] pinctrl: qcom: Add ipq6018 pinctrl driver
To: Sricharan R <sricharan@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_021746_912882_29D749DD 
X-CRM114-Status: UNSURE (   7.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
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
 <devicetree@vger.kernel.org>, Rajkumar Ayyasamy <arajkuma@codeaurora.org>,
 MSM <linux-arm-msm@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Andy Gross <agross@kernel.org>,
 Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>,
 sivaprak@codeaurora.org,
 "open list:ARM/QUALCOMM SUPPORT" <linux-soc@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 2:13 PM Sricharan R <sricharan@codeaurora.org> wrote:

> Add initial pinctrl driver to support pin configuration with
> pinctrl framework for ipq6018.
>
> Co-developed-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Signed-off-by: Rajkumar Ayyasamy <arajkuma@codeaurora.org>
> Co-developed-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Signed-off-by: Selvam Sathappan Periakaruppan <speriaka@codeaurora.org>
> Co-developed-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Signed-off-by: Sivaprakash Murugesan <sivaprak@codeaurora.org>
> Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Sricharan R <sricharan@codeaurora.org>

Patch applied for v5.7.

Yours,
Linus Walleij

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
