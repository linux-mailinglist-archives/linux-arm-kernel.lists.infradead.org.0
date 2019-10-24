Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F11C3E3D6C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 22:38:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vVokbTCdb3LKQt70kXdBHSqUDNU9HKwj836rRgXesSQ=; b=UVAtHFEhHko7SO
	FXvEwjR5gSCrGBqXc4JguKuNlvLzZ1eABnbgafwDw5lWKBpG+lhuAtFGlXMHjvBHRPkex5UpcNCiu
	DBGNfB0rgXK6I79BMSf+EC0FxCZ/JmdNv8JobNyA9WSB8bzVvfV9Hd1zxAG8S6Elx7fUoqlXIhftE
	CbUg4q21LJ8VXTOknIAx+lO+MY3d5/iW8MbI8xpIE7OD6HF9F7mSPkuZ7BDb4OG9VPZD/1fptqYli
	hzAxXC4wInZDg8E4l3bM6YCuxgRROLnAW2Aoj1p9PbiVJCmagjAwVKBsEIygx2gfHRsDwxgF0EtqO
	zsFYmfQwUWWVYDapsH6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNjsO-00045m-Eb; Thu, 24 Oct 2019 20:38:32 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNjsF-00045N-2M
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 20:38:24 +0000
Received: by mail-lf1-x143.google.com with SMTP id u16so20233438lfq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 13:38:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=46gG0xH32mWNPCHT26M/D2mRDfhDwsRIAmZAPlrre/Y=;
 b=q9USFHVTPyl/Pk2iRtxTHSkF6CwqNL40qxvocjG63WdOKw/Z9MIXc/vNRxl+o9lDf6
 JcZUdy2KH129759/sz6MOh/GIEt79sC47m9b8yLoNoWOQ5N0Ynd/kKAdKRKFSvQNsn2g
 Gi84gpraFZS+F8ryRtx7T14L9OWZvibs9492oihE2dBrp3gFv5gng5olquBRogf/XUfr
 s3Ql9fpEINZX4LXK+uTJqMG3Lv3dm+cXwmVIjtcmtkqa7IFU43S04H/MbzaMObTw1hAi
 3Httsv7QY/SGnZf9mItOLusc0FBQPgwg+guoR86M6Z7CW1eBi6Aa2QPdws1YQfCEhMgC
 Jkaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=46gG0xH32mWNPCHT26M/D2mRDfhDwsRIAmZAPlrre/Y=;
 b=XbW61oxXcMcQCmsxM9fPlnT5cJe0qlA+IH7ymsa58HBqAWjW4gLXLybQ35In+lcXVg
 xcj/1+hUlPZopsJTDIiyIdUZtu/7UVvC1t4ffbeinQiCixqII/gnaGMjwPROX77CMtZ2
 CjpCK7GrrttqXTh7pz11lr3TSO8j0eDmSXfG+hY5e5lcQJV//SKICayUUtXkPh6E+/6K
 vU9CmD8q1wFgIAc3cgYt1jrNhK98WYB+aVHIl8cOuDie1ZHxeRm9tRfAWV96FeVStBlE
 5Cb24F/7cOyg+ASkMSqwubvxGJr6KWCipWYNGgBxAMTlYBLAKAjK4LJgq3hjjk2qLUM7
 U8ww==
X-Gm-Message-State: APjAAAUnFjGkWKYvq6jqK+FOhErUUouOuBlvjCLZFNOqw/hHJB3fUGCU
 ZCFszIS52KthV/KN+3AiMZebgRmURBGPf8476GQ=
X-Google-Smtp-Source: APXvYqwZyrocyjZzKG7bmM5lISqMGw4JS9HVrY3/eLmKaWuJoNkf180Wa8QKVtWdaSn12qd8KIzfG44KqcB0s8PXBqs=
X-Received: by 2002:a19:4318:: with SMTP id q24mr109343lfa.12.1571949500714;
 Thu, 24 Oct 2019 13:38:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191022131655.25737-1-sebastien.szymanski@armadeus.com>
 <20191022131655.25737-2-sebastien.szymanski@armadeus.com>
In-Reply-To: <20191022131655.25737-2-sebastien.szymanski@armadeus.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 24 Oct 2019 17:38:22 -0300
Message-ID: <CAOMZO5Bnb-Jd_XkMxdcMFRkmMzcVVikV_6+Ug=Rz6iDa5QZ_yw@mail.gmail.com>
Subject: Re: [PATCH 1/9] ARM: dts: imx6qdl-{apf6,apf6dev}: switch boards to
 SPDX identifier
To: =?UTF-8?Q?S=C3=A9bastien_Szymanski?= <sebastien.szymanski@armadeus.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_133823_131244_9D0E381F 
X-CRM114-Status: UNSURE (   8.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Julien Boibessot <julien.boibessot@armadeus.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgU8OpYmFzdGllbiwKCk9uIFR1ZSwgT2N0IDIyLCAyMDE5IGF0IDEwOjE3IEFNIFPDqWJhc3Rp
ZW4gU3p5bWFuc2tpCjxzZWJhc3RpZW4uc3p5bWFuc2tpQGFybWFkZXVzLmNvbT4gd3JvdGU6Cgo+
IC0gKiAgYSkgVGhpcyBmaWxlIGlzIGZyZWUgc29mdHdhcmU7IHlvdSBjYW4gcmVkaXN0cmlidXRl
IGl0IGFuZC9vcgo+IC0gKiAgICAgbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05V
IEdlbmVyYWwgUHVibGljIExpY2Vuc2UgYXMKPiAtICogICAgIHB1Ymxpc2hlZCBieSB0aGUgRnJl
ZSBTb2Z0d2FyZSBGb3VuZGF0aW9uOyBlaXRoZXIgdmVyc2lvbiAyIG9mCj4gLSAqICAgICB0aGUg
TGljZW5zZSwgb3IgKGF0IHlvdXIgb3B0aW9uKSBhbnkgbGF0ZXIgdmVyc2lvbi4KCj4gLSAqLwo+
ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCBPUiBNSVQKClRoZSBvcmlnaW5h
bCBsaWNlbnNlIHNhaWQgImVpdGhlciB2ZXJzaW9uIDIgb2YgdGhlIExpY2Vuc2UsIG9yIChhdAp5
b3VyIG9wdGlvbikgYW55IGxhdGVyIHZlcnNpb24uIgoKU28geW91IHNob3VsZCB1c2U6CgovLyBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMCsgT1IgTUlUCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcg
bGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
