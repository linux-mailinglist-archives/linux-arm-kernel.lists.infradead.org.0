Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4D11DA2E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 22:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4FAgs2u9qvWV3U6KKBLjtWX/wKvnxeCa91Qv9C+eOM=; b=QbVe2WTds5oGxj
	kvNzjieVLvVPPEBpVmOTh7n9GMOySLKk891ZmWs2KyaQKj+SZUxbg08xe/c9XjORCOdqQXgc2/Jw8
	AJY7R6scnHUGofYZAmK76q2j+3UR6BgPgQnXjfUjc32RYPcKvCIDcXb8WEmuuJAJfnfZL4RFAzO1L
	fHiQYfsM8mACEdyU4VPaCWuV1Ft9fa+mN0BI+P5Zn5b6Gxe8d+WKpyKVBZ4SUhaZcbSR61WXqYnvP
	VO08Nm2k/uOeea+nvCrzgzVKPh+/5hL7ChafR4gDYcLjTndsLRwVkbFlbwfAmIFizPo82WTepR7sZ
	z0oz0OduC8yRU+UQ+osg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb90o-00057f-GQ; Tue, 19 May 2020 20:38:54 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb90e-00057M-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 20:38:45 +0000
Received: by mail-vk1-xa42.google.com with SMTP id p7so188471vkf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tW6EW4cSWh55qYp1WeU6PQVnxEHSMZHc8fHW3A+VMb8=;
 b=OWwWqJvjeWW5njlNWGf2uPt037V4dYIPW2MnkBt9ha+MFBeJ2Zh5pekuhMEvAdkK/d
 d9voue+0cyZCDGJ2CAFCUlJ2VxKdotHK1mYnwFQc4n0ITdCEcJ5NyFGYyDEUMs2eW0Oz
 6mWKRFm0oOYPh+S/Cmr+e2voxCarx5IHw3Vi0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tW6EW4cSWh55qYp1WeU6PQVnxEHSMZHc8fHW3A+VMb8=;
 b=gCp9VwAjzVjzW2bZP0x2XrXRav1I3qKLXSKurrDAq1eh7ZJM08Gzuc+ANxBCtTzFD+
 kR2I0+Qh7jH36cwXt0NMCftm0oxG9PmWQSrCF9Td6BfsLDAx20slFlLQlpGY5j4OTLtj
 okaVnTsSmTT7SMiyhvbaVPejxX3ewvHpOMin8gI8WlVFx8u7KIvUzLjF+d+YaUgIvV6p
 OWqjacG7WYfWqUnmaeHpDbest2QmPiw5KoqHBAoNPnkBR0h8evAZF34IzjhcqUWq5mOH
 qS6oloqQBus+xHGrFHx5KegNa/zkm4As0Bb0oRsF5s4cstdUeeCWFONIlKTRcPnU4Ulm
 Tq1w==
X-Gm-Message-State: AOAM531UWAYbllnp/BDSuQoKmlB4/umclcpJ8Cc2WXnKLIHRTsfFnDzE
 OKuoG1lo6AUiDTyrvmZUpyHFCE7nv4Q=
X-Google-Smtp-Source: ABdhPJzy/4/yCvQwmIfqOeMLhh5kIoHDxOLc+kZew58VxPTQ2Uc8GMpdADAXOI7QZvXvTJPxs/d6KQ==
X-Received: by 2002:ac5:c54a:: with SMTP id d10mr1430759vkl.21.1589920718117; 
 Tue, 19 May 2020 13:38:38 -0700 (PDT)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com.
 [209.85.222.47])
 by smtp.gmail.com with ESMTPSA id q21sm194682vkd.34.2020.05.19.13.38.37
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 May 2020 13:38:37 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id 14so435393uaq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 May 2020 13:38:37 -0700 (PDT)
X-Received: by 2002:ab0:b13:: with SMTP id b19mr1046847uak.91.1589920717000;
 Tue, 19 May 2020 13:38:37 -0700 (PDT)
MIME-Version: 1.0
References: <1589914405-6674-1-git-send-email-pillair@codeaurora.org>
In-Reply-To: <1589914405-6674-1-git-send-email-pillair@codeaurora.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 May 2020 13:38:25 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VEDDm1cHQNLVitMLxMYvGA-pON+mdBj6SGn46yhw0jVQ@mail.gmail.com>
Message-ID: <CAD=FV=VEDDm1cHQNLVitMLxMYvGA-pON+mdBj6SGn46yhw0jVQ@mail.gmail.com>
Subject: Re: [PATCH v10] arm64: dts: qcom: sc7180: Add WCN3990 WLAN module
 device node
To: Rakesh Pillai <pillair@codeaurora.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_133844_690375_6C342E30 
X-CRM114-Status: UNSURE (   9.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, May 19, 2020 at 11:53 AM Rakesh Pillai <pillair@codeaurora.org> wrote:
>
> +               wifi: wifi@18800000 {
> +                       compatible = "qcom,wcn3990-wifi";
> +                       reg = <0 0x18800000 0 0x800000>;
> +                       reg-names = "membase";
> +                       iommus = <&apps_smmu 0xc0 0x1>;
> +                       interrupts =
> +                               <GIC_SPI 414 IRQ_TYPE_LEVEL_HIGH /* CE0 */ >,
> +                               <GIC_SPI 415 IRQ_TYPE_LEVEL_HIGH /* CE1 */ >,
> +                               <GIC_SPI 416 IRQ_TYPE_LEVEL_HIGH /* CE2 */ >,
> +                               <GIC_SPI 417 IRQ_TYPE_LEVEL_HIGH /* CE3 */ >,
> +                               <GIC_SPI 418 IRQ_TYPE_LEVEL_HIGH /* CE4 */ >,
> +                               <GIC_SPI 419 IRQ_TYPE_LEVEL_HIGH /* CE5 */ >,
> +                               <GIC_SPI 420 IRQ_TYPE_LEVEL_HIGH /* CE6 */ >,
> +                               <GIC_SPI 421 IRQ_TYPE_LEVEL_HIGH /* CE7 */ >,
> +                               <GIC_SPI 422 IRQ_TYPE_LEVEL_HIGH /* CE8 */ >,
> +                               <GIC_SPI 423 IRQ_TYPE_LEVEL_HIGH /* CE9 */ >,
> +                               <GIC_SPI 424 IRQ_TYPE_LEVEL_HIGH /* CE10 */>,
> +                               <GIC_SPI 425 IRQ_TYPE_LEVEL_HIGH /* CE11 */>;
> +                       memory-region = <&wlan_fw_mem>;
> +                       status = "disabled";
> +               };
> +
>                 config_noc: interconnect@1500000 {
>                         compatible = "qcom,sc7180-config-noc";
>                         reg = <0 0x01500000 0 0x28000>;

For completeness sake, I'll also point out that the WiFi node is also
sorted incorrectly.  0x18800000 comes after 0x01500000.


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
