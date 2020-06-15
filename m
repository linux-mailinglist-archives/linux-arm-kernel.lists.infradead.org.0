Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AFAB1F9818
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XV9yipyrjDZaMY5JV/+W+liXwD5VYqnVrVFHdqbLJqI=; b=TVmbEVEpGwtdgA
	dFmBmTLbVmFRcQoKWjNJ/LTizdW5+i8y6zSwfIQYc6DXEA1ZEXHm5A6E5CQyzwC9mcn96D++lLCdR
	TsaglJmyGqH4HNukwuAUgcb6/tKRf+K/Aq8S/K5vGCzwUTiYzEl/ku/tMcORBusuDEmPe5wRD6eRz
	MvDYOBD/sRdbuHEUZBQRVU+HchDznzozMwezI92c5C8z2Nts3a0NsDHs3QNL6CQfCQ9Vw9CjPqn2a
	eQcSQpv3p5g6+x+MgP2W3X1Xi7se/Aw/dGH37j9mjBUwvkO5KBNjSoTZui/2/mQVgSSjeMVXnF6ZZ
	YRlG1n0kK++z73uA+Hgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoyl-0003Dn-KM; Mon, 15 Jun 2020 13:16:47 +0000
Received: from mo4-p01-ob.smtp.rzone.de ([85.215.255.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoyc-0003Bm-7J
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:16:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1592226994;
 s=strato-dkim-0002; d=chronox.de;
 h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=zqxmVgdmjcOl7HZi58VyJB7Dsh33gu503wdQu+OOuvI=;
 b=KY1l+P3nH6XIb0KazahN3x7PfnzYktlBMSb2VAg0bp1peFVJUr8FURXjTkDw62HiGO
 oKly0iIdIUtUOlEjNfVNBf3YlZpBHDm0eIf+FVVxx7KXFdzCPzFWEihIGb9+6L0Msml+
 m2qIINLI3QcgrSY7cPQnzxzP/r0NhrI3V/+fbMpGxguMaxNSzMztpAvPpHw/AIOuFpjN
 LeGXKbWD6pscb0JTkJO+41Jjx1q3YMIJYcWwqFVi3DOXleefA4pk+QesSAruBJnGl43B
 sn35Ih4hVseP8lykzndN4SUmA7bp3CI+QH1At7t31OiMmUj1EIn+DD1ZOpWJss3jNqDv
 NLnQ==
X-RZG-AUTH: ":P2ERcEykfu11Y98lp/T7+hdri+uKZK8TKWEqNyiHySGSa9k9xmwdNnzGHXPaJfSc9CNS"
X-RZG-CLASS-ID: mo00
Received: from tauon.chronox.de by smtp.strato.de (RZmta 46.10.4 DYNA|AUTH)
 with ESMTPSA id U03fedw5FDGPB5E
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
 (Client did not present a certificate);
 Mon, 15 Jun 2020 15:16:25 +0200 (CEST)
From: Stephan Mueller <smueller@chronox.de>
To: LABBE Corentin <clabbe@baylibre.com>
Subject: Re: [PATCH v2 13/14] crypto: sun8i-ce: Add support for the PRNG
Date: Mon, 15 Jun 2020 15:16:25 +0200
Message-ID: <2861786.iSnlG1rnU6@tauon.chronox.de>
In-Reply-To: <20200615130253.GA8958@Red>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
 <5634597.9v007L4FOH@tauon.chronox.de> <20200615130253.GA8958@Red>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_061638_849860_59C71395 
X-CRM114-Status: UNSURE (   6.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [85.215.255.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [85.215.255.51 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: herbert@gondor.apana.org.au, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 15. Juni 2020, 15:02:53 CEST schrieb LABBE Corentin:

Hi,


> I still dont see any memset_secure in kzfree (mm/slab_common.c).
> Does I miss something ?

Nope, you do not miss anything, it seems that the patch that I had seen did 
not go in.
> 
> Regards


Ciao
Stephan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
