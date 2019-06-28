Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2227C59282
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXjjE9719n9NCXEB6IfqQHpRNKS/x1Od8fk2kQpygf8=; b=jzfIfS3JSsxxdT
	4t6Su2y8XfCWrvcY84ycHwPkEuV3+fLiA2LkWDrL19OmYMnmUNeSjKxCpfcgQQ9gzHfxJuVgf8MoO
	YIkFuLj9BhluRBhOzHowqjfPBrDYyL6yLQ23TQqVx3rIRE0Zo8k0QdDpRgXd6OVlCkfADm9C/9pt9
	/iJ/GXWR/ETdeb4lC7HY6F7FXqzL2K0D1YHdlLyMt+IZjtZPctkNMeTrLRrArvbVtfTqRnsiNKyVG
	7JtFSbsMDw4TbzRe6lrOnqlTEKYaQHZ4AUWRXHgvxaPIiiwc9nTC4NV5LIh8bAQKFnl7CrzTZ2pf0
	svUlb/K+4z85l94SlD5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgiMg-0000rq-BQ; Fri, 28 Jun 2019 04:19:58 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgiMR-0000rJ-5I
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:19:44 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hgiMO-0004wu-AY; Fri, 28 Jun 2019 12:19:40 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hgiMN-00026A-6w; Fri, 28 Jun 2019 12:19:39 +0800
Date: Fri, 28 Jun 2019 12:19:39 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH 00/10] crypto: k3: Add sa2ul driver
Message-ID: <20190628041939.7yduk77x62twath6@gondor.apana.org.au>
References: <20190618120843.18777-1-j-keerthy@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190618120843.18777-1-j-keerthy@ti.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_211943_341815_5FA4E18C 
X-CRM114-Status: UNSURE (   5.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, robh+dt@kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 18, 2019 at 05:38:33PM +0530, Keerthy wrote:
> The series adds Crypto hardware accelerator support for SA2UL.
> SA2UL stands for security accelerator ultra lite.

Please cc linux-crypto@vger.kernel.org.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
