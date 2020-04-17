Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECA11AD5DC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 08:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:References:
	Date:Subject:Mime-Version:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XS6KHRCRHfCrNe3sSPMd8AgeUpLc8sp6ET7DYIA70p8=; b=XonGV/pYgLzZ99
	624j5m7V21Ltx78WN5I86le6le/wGr5pMcV+luc3M/fmhvVvN47qC2Xc67Ga66BSWYIYXFLh1GzoK
	BHHsCMxCaomJb8z04YFSU7s8Iobv7IaivFQd5LIPC8NPM9gx2/qXhxJfTf1R3dBUgSQAWUgYBU4LE
	tdMiosbATylwPO4azHJ4ei83xRR/fU4Mn6/mwPpM1QMxpW5pPbAak0fCPodWKF/cGmg2AOm8DDzIu
	GxklWqTA8DExsh7R2l1mDdmUkhANANuPmJB0ngGmimiQjR+BsnQokuXNO48JR7dtt5yJgKrK9YVfs
	aHT4eEaW0bTpto8wdFJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPK2o-0008Ig-Ew; Fri, 17 Apr 2020 06:00:06 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPK2a-0008HB-TU; Fri, 17 Apr 2020 05:59:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id 131so814688lfh.11;
 Thu, 16 Apr 2020 22:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:content-transfer-encoding:mime-version:subject:date:references
 :to:in-reply-to:message-id;
 bh=KCPHum5NfriSROGpDRagY9arwqzGeCJ9Uy+nSz5Dbdc=;
 b=MpUvL2YuibSpJZaVDnKEidiTlm12+7C3IICF/DGMVymDcthklvavDzR4qLWBc5/AiQ
 LzQ6n82JAvdDE4x0Y0VHjZR8Q9R6fHgG4NmVFcNstmSjg/4fd8uZkVp0Ws+TogUnDemI
 KPu86DCU1sJ6qurFzBKyzEAocXBtgTIC7rdcBXhLcY+1IlGADeDPGcbMTSAv/tKDoHoq
 uKjlN1G6GwdEjh3rvN5BNXLUMaFnHFgJ+1/xBlo4WOoTnpYy860a/eBE3pC3ZD0CGVnV
 OSDjmijdX+nlYz5o9chHIAzSm8ou3CgTuft1M/q2FXXvu/cuf88J6eowvYGce7wufYEV
 AJZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:content-transfer-encoding:mime-version
 :subject:date:references:to:in-reply-to:message-id;
 bh=KCPHum5NfriSROGpDRagY9arwqzGeCJ9Uy+nSz5Dbdc=;
 b=Fi9MhkaMMECFCVqP53V87xuaZ48CtsGpEZbhfjLAvXs5YtEgl3EV8ASNEl2dRzu1a5
 WoVQHllltrDo4nWEnJ0zCHXlZOFtMZKfI54GukEW7KtfnZd4/WttoHMaLJErvk2MjmG0
 zv1y7pFo42rNRT15uoLDj0kgSiBKnX8Y5m0quBgMMkSxmI9UGwYVdQY6mvVulM5aV/u1
 LBh7aEEbtUVLwzVDGn5GSDJDwZTRQ7dhzW0/sIsNxx6vII62Udg5F+ybY8lojomudkbI
 sDfY+GFZ1wSi5+hGqtFUF/ECqwKIMH3Euf1t05lsrqkAoGb+Q0NNa7VMSI7XVql27FIG
 wKog==
X-Gm-Message-State: AGi0PubJyYPUOLbncx7BI8p/vOwDdS2XQ0TZ6mo02UX1hhHYyXXNkdtL
 SJGdbFXjOBrKfNJiSSgdhhY=
X-Google-Smtp-Source: APiQypI3qukQ4tZM9Ts9XozSXmQmnYwjcbblor1p9+Yx3fV/8PNw7LNqEB1j/HGIrOAooq+lva/v3w==
X-Received: by 2002:ac2:4213:: with SMTP id y19mr866623lfh.99.1587103190526;
 Thu, 16 Apr 2020 22:59:50 -0700 (PDT)
Received: from [172.16.20.20] ([87.200.95.144])
 by smtp.gmail.com with ESMTPSA id c22sm15226427ljh.66.2020.04.16.22.59.48
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 Apr 2020 22:59:49 -0700 (PDT)
From: Christian Hewitt <christianshewitt@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.14\))
Subject: Re: [PATCH] arm64: dts: meson-g12b-khadas-vim3: fix missing frddr_a
 node
Date: Fri, 17 Apr 2020 09:59:45 +0400
References: <20200415095927.3780-1-christianshewitt@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20200415095927.3780-1-christianshewitt@gmail.com>
Message-Id: <AA7AFC1F-AB6E-438D-8510-BC472552C554@gmail.com>
X-Mailer: Apple Mail (2.3445.104.14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_225952_976716_5A34AA6C 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [christianshewitt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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


> On 15 Apr 2020, at 1:59 pm, chewitt <christianshewitt@gmail.com> wrote:
> 
> From: Christian Hewitt <christianshewitt@gmail.com>
> 
> The frddr_a node was accidently deleted when creating a common dtsi for the
> Khadas VIM3/VIM3L boards, preventing audio from working on the VIM3.
> 
> Fixes: 4f26cc1c96c9 ("arm64: dts: khadas-vim3: move common nodes into meson-khadas-vim3.dtsi")
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
> arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi | 4 ++++
> 1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> index c33e85fbdaba..c6c8caed8327 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-khadas-vim3.dtsi
> @@ -154,6 +154,10 @@
> 	clock-latency = <50000>;
> };
> 
> +&frddr_a {
> +	status = "okay";
> +};
> +
> &frddr_b {
> 	status = "okay";
> };
> -- 
> 2.17.1

NB: I appears the same change was sent by Neil in [1] as a fix to 5.4, but
this appears to have been dropped/missed somewhere.

[1] https://patchwork.kernel.org/patch/11198535/


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
