Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 636E71FCE38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 15:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sd57JimcxuYR0APn6IKyNIkuvEfEdZnQf/Oiv+GlUUk=; b=DHZ7bfWHsiiXag
	iImmyILtiHI7B01mxFBqwMYU6FAxw1wBQ3MsTL89tMVhNXgd9ovlzCT5sjJNpUFCVJSxBR/a2nyp3
	bPtSIChhRwefB9jZM0rGbH1s0wFPHscd6iGcYffj4ox7hCHeKv6oyjBLIefD4SUq00G77/f1mtaEE
	hzaJ6U4NHNhB3gn9fNBw+iNf4AXlF1wza+Wv2RO6s8eOrnb9Io4TG6qQV3ABIxj4ZNtVP6/DriWv4
	KONCi563AtPVsCfIsPaKjLvGIqXAKOe8Ow/E6xJ10i0ZSKzaQCMOGSWHJ9/etxskspKhapo3SmdZP
	3B8XOgUk/PdbaE7IW+eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXwK-0006uI-AM; Wed, 17 Jun 2020 13:17:16 +0000
Received: from rdns2.delivers-solutions.com ([147.135.99.14])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXwB-0006sv-Ej
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 13:17:08 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=default;
 d=delivers-solutions.com; 
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding;
 i=info@delivers-solutions.com; 
 bh=HfOzYHtXihvNe2PYgpNWZYop7xo=;
 b=pG9DFxwF2/LuAre2lSbU/Vbb8FoqWEQMZgRxND0vSK/e8OkHZJyLPtrnSjrlz6grLM2LCBG470eR
 TVriCglw4HMxtq8RVzxIKgNoP+Jjyh+OvmXD/pfiZCMqHmbj9cr87qhad6D8geQj94B+RZSmu213
 KGvK9FafLIhBDgdDSC0=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=default;
 d=delivers-solutions.com; 
 b=nhkcFH0NStBQyX8dTnrKRf6wHW05s6+sbTKh53nIZKlPRJmifJx2TYxf/Mh4vGQRUrGSb52DIg1j
 /W2W56mEFqY11VcSb0wlPlzhkAiHMtx+aq7Fy30BHXaZHbaDdNOagWOHuBLkAT7OL7caTDsVfQs+
 DL5Pkjt6KajBtDQJ3I0=;
From: info@delivers-solutions.com
To: linux-arm-kernel@lists.infradead.org
Subject: Receipt For Goods Available
Date: 17 Jun 2020 15:17:05 +0200
Message-ID: <20200617151705.A31D51875C11DB44@delivers-solutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_061707_493093_466C1862 
X-CRM114-Status: UNSURE (   1.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: info@cocyflame.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

Hope this mail finds you well.

Our company have not bought your products before but due to 
excess demand of it here, so we decided to go for it.

I still have other request to make but there all in my 
specification.

Please let me know if you still have stocks available.


Waiting for your reply

 



Warmest Regards,

Angela Wilpert

Sales Executives Dept

HDT Sales & Merkating
vasileos konstantinou 89 Paphos, Paphos, Cyprus
Phone: +357 26 040001


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
