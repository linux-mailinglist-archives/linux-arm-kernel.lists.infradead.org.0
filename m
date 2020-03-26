Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E49E6194BB3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 23:43:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ygqMML0sBfqoFOgsyxvZfvm8saRJ0jQ+j+59qLygbSo=; b=As11o1WALWOrOG
	EvZieRfbwM4kglGc1nnR8Hzku2yRv5zD8bwxWFj+oFxnWCutzJQ1jGhYYma1v1cqP2fqP9aamzGV3
	JtOVHydhPQvjQpOJHkBSoNXjt3UrM0A4Ep/5aK4TxS9stepEE0TNrZFWelwuPWc2/EBO6pZGI/jqj
	5pPveDS3OnLS4Q3doZBgTQD0Bl1FaKqttGWcM9STLYED2tkA08gh7Z+C8nRuchIxa3Oga4t/Ldcbv
	fwCxOSQ6ZIVwDBsOSc/prdeB17RmffeBSkopaALcxcTcWdbxlecuB37KeR1jVR3kD/7KHIbZqDaLb
	TdNrZmdLIQPW9FYx5IcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHbDJ-00030b-SF; Thu, 26 Mar 2020 22:43:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHbD7-0002zF-GB; Thu, 26 Mar 2020 22:42:50 +0000
Received: by mail-ed1-x543.google.com with SMTP id a20so8951383edj.2;
 Thu, 26 Mar 2020 15:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rUglTJY60k/VNdcHM8mWBp0Wt/HBwX9IipXPiPlgn8w=;
 b=MQPwBnmAmuVapE8voWiDYLTWURcpWf90RQTJQGxGPu6mY/54TCm27ZFBemawysP2ne
 b4TFic9ZqjeDXKtxb1Vad6mx60Le/sdnGqiAR03fgOdCvWE+8M0mOQfW4lBUWoe4DLYx
 2h/P8RB3ITGLcpzLJpIaCdIxJNl4n0J3o1unJhwsNeVUv7BH+bZBRvekEdVPbhuXjOFF
 YsRYaclcewnZxcNXsoWCmFUNnEkhQAA+kJYgU6JG2IoHy4hwRnGVg/zdOQJH6O2pXuuf
 am58u4bgb3p6yFSQ7NrbOH1JjPbTIOlVKllIHGU22jhZG7jh55ljownJP9WdcMMoZxVo
 /2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rUglTJY60k/VNdcHM8mWBp0Wt/HBwX9IipXPiPlgn8w=;
 b=ZZAQ8r+0DHrm9xpG20/xrIfer656X9SGCZSwdI6uBg98WPL3a4ttHNsAVy1Lrh5lNB
 vvbAIIQZ/2gcrARaLEVIqLSBXVBB47Rqlsc7W5ePmP2sTKbU/VLCWf5S07jqTP5hL4CG
 iDyJr7tMjNc/f23mszLV+GM811Luvn3HoPjlX1Y8nVpLxBDaU/trqfClPz5E8AnoVTyp
 s+sOiriHZwTZD44b38BjhdUGKTgqptDGqFsfv3t99Gx/OncCQLIoM06HIy2g2NPShe6r
 sStXM0EDMs4sS2WRwIBn2M9Vray+78smLe7h4BIW2Ej2H+PUzD1/ZcfpcQ367MLgFUJW
 iKLQ==
X-Gm-Message-State: ANhLgQ2Fmqu8HhRp3YM2i9ommth+EmFhsXtk0rJBinO+fDisCPedAXdf
 sFBVw/OOMa11lq/4ztYyApqxTtQhJXib5w5YHKY=
X-Google-Smtp-Source: ADFU+vt9fM5/Lh/iQoYKhQ3WMcsmWRhFmWbiBIl4sQGfSjNJUrYw3Ar9BVh+r+b3CVNqxhzzfDaylTNHvbh2zBIdt7E=
X-Received: by 2002:a50:9e45:: with SMTP id z63mr10548437ede.338.1585262566004; 
 Thu, 26 Mar 2020 15:42:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200326160857.11929-1-narmstrong@baylibre.com>
In-Reply-To: <20200326160857.11929-1-narmstrong@baylibre.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Mar 2020 23:42:35 +0100
Message-ID: <CAFBinCCwvfycP9VZ35Jn=yNRbgbUYkRucLPpRGCJv2XCTR+o6Q@mail.gmail.com>
Subject: Re: [PATCH 0/2] arm64: dts: meson-g12: usb DT fixes
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_154249_566292_7201A195 
X-CRM114-Status: UNSURE (   6.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 26, 2020 at 5:09 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Misc USB DT fixes for G12A.
>
> Neil Armstrong (2):
>   arm64: dts: meson-g12b-ugoos-am6: fix usb vbus-supply
>   arm64: dts: meson-g12-common: fix dwc2 clock names
for both patches:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
