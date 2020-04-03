Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D3F219DC52
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 19:03:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Subject:To:From:Message-ID:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8p6RDUgPLQaA7zkuo9bxyouoZbdG3PeTr1Agjh1M6k=; b=Qu5LjbnL8dbFSH
	9GjBWxHz7biLt2t1j1JxR2/y2s2fmyRNo8AzvIjKpd4uBIsJ7aXGnynZfxekTNmiRZNvP9kUElqL2
	4gsGQceF/QClFSAUj9U55MJoPB/vdFEt7GtucKyXwBk/yTQ1Uxdmues2j9JKITWnswYHQvvgL2sf4
	P4Z2kBkw70qPifZRpZw0++BwAFXuPC5BECaNjOQCF5O4fwxUJmnKb6GccXtKMR2cb9enKziD1ItFD
	te9F1KZjOX2IwksU9x3RDsSM08KEhd8uHduJfhztohMheeGja8aUJ/7K00hGHu5tF9+BAhrT4HPOm
	FiS8y5FJH4UjaIbt52Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKPiz-00020i-UK; Fri, 03 Apr 2020 17:03:21 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKPiq-000202-1Q; Fri, 03 Apr 2020 17:03:13 +0000
Received: by mail-qv1-xf43.google.com with SMTP id s18so3957211qvn.1;
 Fri, 03 Apr 2020 10:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:message-id:from:to:cc:subject:in-reply-to:references
 :mime-version:content-disposition:content-transfer-encoding;
 bh=C18c1IugNAFxFaCXPQKTt7OVFB64Oo1MwWK6g2EBugk=;
 b=hENydy7D0JCIgFa87b7M0ed1qoGpz0QGXHyXVDmHGDh7zw+L+WUhbK8IW02pBk8qHM
 ADsA25xAJ67o4Ra6VRdXBwMhcZMuHy475xAxlyiU1YuRkbqv+PF2ir5V5qEjMcANfQVn
 jGY8UQU13Viwi+GDqFDM01+/XrhVQbFZPaY/Tb2zki4oxJUEWTJXSoycxyeREVVBXM5T
 uUK7ezP46TqBapFishKlJi3Sy21RVUbp0ZoycRDNJ8VBJIH1oXob0kZUNKCSq+meSRlw
 PvtxAFdZSw3sGPJDdA0MlyJjyUWjLDDi5bCftL5qN/hJ4Jis+/StdK4ZXo5AsP3JJEfj
 3FBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:from:to:cc:subject:in-reply-to
 :references:mime-version:content-disposition
 :content-transfer-encoding;
 bh=C18c1IugNAFxFaCXPQKTt7OVFB64Oo1MwWK6g2EBugk=;
 b=GYNccaGCap4sm67d/BbFr9kalfK44XfKfuR5sPd6oIa6lCc9+IB7ZthkUKqlt0nUax
 Cf7ibxphIkTlTMDZ0jvw9c/ddatwsad1wPDR1tfGufeJyWA6RQ9S6wquVM0sY1xq61nW
 W4qlQZys/Z2NBEgHr8TY81RWNh9IYOqHOGvHEfR8xEkheM04Y/zjRXibu7UtcBwFEWpw
 H7AeOKBYBz4E+lbAZ6/ohSQo1NACRXnAZEWp33ngTorL/fVWZABDmaWWKHVw9NX5jwaF
 ByD3Cw+MkNsulAVfgCW8A2lCqEescrdMozJx4qXB8xVbcp6oiHyAwLf0hPBjI6TQ6HyL
 6InA==
X-Gm-Message-State: AGi0PuYIVMCa/ao4hxufzXaWxMp0YzFN2QjQH0h0n1CtZavRBsTuD1vl
 byb2cfW0UGKp2g0vj4ulSb8=
X-Google-Smtp-Source: APiQypI7c1myt6pyEA1+Je1XA2txJx4TleqRCwZGZQeWyffLtTOCPCApztHQrbf9btvLkagoi//UCw==
X-Received: by 2002:a05:6214:1933:: with SMTP id
 es19mr9320626qvb.186.1585933389339; 
 Fri, 03 Apr 2020 10:03:09 -0700 (PDT)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id k2sm6777761qte.16.2020.04.03.10.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Apr 2020 10:03:08 -0700 (PDT)
Date: Fri, 3 Apr 2020 13:03:05 -0400
Message-ID: <20200403130305.GB6453@t480s.localdomain>
From: Vivien Didelot <vivien.didelot@gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH] net: dsa: mt7530: fix null pointer dereferencing in port5
 setup
In-Reply-To: <20200403112830.505720-1-gch981213@gmail.com>
References: <20200403112830.505720-1-gch981213@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_100312_135394_C8E577A1 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vivien.didelot[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 =?UTF-8?B?UmVuw6k=?= van Dorst <opensource@vdorst.com>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Chuanhong Guo <gch981213@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri,  3 Apr 2020 19:28:24 +0800, Chuanhong Guo <gch981213@gmail.com> wrote:
> The 2nd gmac of mediatek soc ethernet may not be connected to a PHY
> and a phy-handle isn't always available.
> Unfortunately, mt7530 dsa driver assumes that the 2nd gmac is always
> connected to switch port 5 and setup mt7530 according to phy address
> of 2nd gmac node, causing null pointer dereferencing when phy-handle
> isn't defined in dts.
> This commit fix this setup code by checking return value of
> of_parse_phandle before using it.
> 
> Fixes: 38f790a80560 ("net: dsa: mt7530: Add support for port 5")
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> Cc: stable@vger.kernel.org

Reviewed-by: Vivien Didelot <vivien.didelot@gmail.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
