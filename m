Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB4716590A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:21:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rCZmQU4m4pUpwvY1gBT4GCADfodaDACo8ZxSGT1xkBQ=; b=LyxUyRNoVXDdCJMZSE9A/UweHx
	UR0Q96gokOM25Ocl0zUlKlwHD15+ASwz72IS5TlniO3T6BQN51t8fhzH3OnR4hk1n3NpblKV3Qxx8
	7CWVw3XM0Cj5OUi2tSrwjWoT6obDhcfLSjzgL3mzhaXCiMgUL6DphP4JS98YJQW42kq0OI/C6zcv/
	G3qvpGBZ3+VTWE607zBifXXPyt7S0wHCnwM4WvSz+8ZKlDTMuZMhIyrk/M0d2CW8CXK5qLOF7/uVR
	+5Ng87CKNK9VHm3lWNZSx10oNAnchFeNbcPax0WTZbqLmV4h80CsspEAg4gIfBxD/vAgj+Cm+jEDf
	kagJbzHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4h5U-0001Rp-OE; Thu, 20 Feb 2020 08:21:36 +0000
Received: from smtpng3.m.smailru.net ([94.100.177.149])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4h5L-0001R5-FH; Thu, 20 Feb 2020 08:21:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=orpaltech.com; s=mailru; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:Subject:From:Cc:To;
 bh=n9mLrYl2rzflgjD4ntXo272yW/SUmgpRuec1+i3cV/Y=; 
 b=fOCFnpj4e1AM/dWMw4tV1LOS89DAxUJWxqj/J6PfYe7v5oEwfXZUo8zm4aWIqi4AuNu+bKysOQk/a/ES7b4djqnt4AIGkL774fXbxrl7hqgsdoKijIvY5CpuO6YQjN4sdZ6pU+t5J7Fx4xFVzq5SByjYxTJCMPSpZXDgyQZKbIo=;
Received: by smtpng3.m.smailru.net with esmtpa (envelope-from
 <ssuloev@orpaltech.com>)
 id 1j4h5G-0002YV-0i; Thu, 20 Feb 2020 11:21:22 +0300
To: linux-rpi-kernel@lists.infradead.org
From: Sergey Suloev <ssuloev@orpaltech.com>
Subject: vc4 on rpi3 A+
Message-ID: <8b353626-f62a-2aff-96b4-91712ed36095@orpaltech.com>
Date: Thu, 20 Feb 2020 11:21:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
Content-Language: en-US
Authentication-Results: smtpng3.m.smailru.net;
 auth=pass smtp.auth=ssuloev@orpaltech.com
 smtp.mailfrom=ssuloev@orpaltech.com
X-7564579A: 646B95376F6C166E
X-77F55803: 0A44E481635329DB0E1AA8A03B392317D32E5E4886521736714D0EA31FF80092F5FF9959873BB261F688BCB05C26794D1814CBB712D2988316D055344148C1BA62FC0F0734C5A28F9A9D2A8ACCD75E1D
X-7FA49CB5: FF5795518A3D127A4AD6D5ED66289B5278DA827A17800CE781C4E570E9C9D556C2099A533E45F2D0395957E7521B51C2CFCAF695D4D8E9FCEA1F7E6F0F101C6778DA827A17800CE7ED6B9921EE2920938F08D7030A58E5AD6BA297DBC24807EAA9D420A4CFB5DD3E9DA2E410B3308CDE4D125387B11E1BAAAF8F674D84899D4A8941B15DA834481FA18204E546F3947CD166953D3EA3826BF6B57BC7E64490618DEB871D839B7333395957E7521B51C2545D4CF71C94A83E9FA2833FD35BB23D27C277FBC8AE2E8BEC1C9C6CFAD2A0F5A471835C12D1D977C4224003CC836476C0CAF46E325F83A522CA9DD8327EE4930A3850AC1BE2E735B58781B77DE60D36C4224003CC836476C0CAF46E325F83A50BF2EBBBDD9D6B0F05F538519369F3743B503F486389A921A5CC5B56E945C8DA
X-D57D3AED: Y8kq8+OzVoxvgW9Op3aR8Fxwo7H2ZNxGP5qz8aO2mjTJzjHGC4ogvVuzB3zfVUBtENeZ6b5av1fnCBE34JUDkaJinJwwHx5ysVv9/YfT9ud3AV4nHq/+9Q==
X-Mailru-Sender: 689FA8AB762F73930799C7A3FA23A2701C91C185D95CB344F1D52F011957DA03778B5FB1219D8779F6BCD4B1DE95BF653AE5922765F965CDF1D7D1B96E5495AE10FCEA6DFE3E0A150D4ABDE8C577C2ED
X-Mras: Ok
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_002127_703827_0A2BE6BF 
X-CRM114-Status: UNSURE (   7.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [94.100.177.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>,
 bcm-kernel-feedback-list@broadcom.com,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello, guys,

could anyone clarify the status of vc4 drm support on RPI 3A+ ?

I tried to build kernel 5.5 and 5.6-rc2 in 32bit and aarch64 
configurations with VC4 turned ON but both unsuccessful - vc4 drm driver 
is listed in memory but not working and not producing any typical DRM 
log output.


Thank you


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
