Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAADF2ACDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 03:53:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=V4+c4QEpvIP1tBXU0TZCCzNZf0x3w77iRsegQU9AGXU=; b=ks7
	8kFefJjIYw0XHoicTdHBnAZkSFv462eTnBk1mxl8jIFqcA365kP+W5ROCYGhGz4xTXcrgfT4ru1G5
	TaS21hV3K6s/Klgl5oAbtZMA+nU4wkUzslAEO1GRc0MtAtEQX2Y3IQWPulTxkpjq7vWtsyUb0L4Ia
	jTQyErHbaXW1Ozl9eoY9/YkrAf2/Ir+LY9S7gW+JpR3GpM+sBwzuTW9sRgZlOCAWXLRIuTOQyrLyl
	Pb+BBj5MmCAiNBK8l4QF4r5vntO8/BhJCl9IzrP+vuhKxRJJwbXzuyeZXSoE00ak/ZQbndXzJ8Er9
	Av/xH/tc12MCVMZCy6nMzJMllnhU4Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV4pH-0002yz-Cn; Mon, 27 May 2019 01:53:23 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV4pA-0002yU-K0
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 01:53:18 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id A3C53200121;
 Mon, 27 May 2019 03:53:12 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D7BC200A4A;
 Mon, 27 May 2019 03:53:09 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 9E257402D6;
 Mon, 27 May 2019 09:53:04 +0800 (SGT)
From: yibin.gong@nxp.com
To: kyle@kernel.org, festevam@gmail.com, shawnguo@kernel.org,
 l.stach@pengutronix.de
Subject: [PATCH] imx: sdma: update firmware to v3.5/v4.5
Date: Mon, 27 May 2019 09:54:59 +0800
Message-Id: <20190527015459.32050-1-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_185316_933650_8E86353F 
X-CRM114-Status: UNSURE (   6.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-firmware@kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

Update sdma firmware to v3.5/v4.5:
  -- add uart rom script address in header of sdma firmware to support
     the uart driver of latest kernel working well while old firmware
     assume ram script used for uart driver as NXP internal legacy
     kernel.
  -- add multi-fifo SAI/PDM scripts.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 imx/sdma/sdma-imx6q.bin | Bin 2196 -> 2746 bytes
 imx/sdma/sdma-imx7d.bin | Bin 2302 -> 2862 bytes
 2 files changed, 0 insertions(+), 0 deletions(-)

diff --git a/imx/sdma/sdma-imx6q.bin b/imx/sdma/sdma-imx6q.bin
index f0b5252a6fc5f85aced28a5c43e7268340fe4d73..4d0593cec7dfdae1a8bf28a2d83bdd1e95839b82 100644
GIT binary patch
delta 1525
zcma)6Z%i9y7=P~Vd-t~21}L+%12P!dT1;eP#^@5w@DEwYVqq&3uxk-JFn9vv3!z)?
zdeLvXDVwh!de<}Z!I(^=iHUwO3%ZhM<3_TGPD1g^aK>5YOjw*7X7znr{>-^V+dOyA
z@Atg#^XKmU-P`WZJ@uWf!KZ8hATq0E*2L^0vtJzmuOfic+XLQ0um+&OetAYbzP03^
zsX5(uz<=2XaH|@im+f6)t0s94#vNuh&iFknw;i9Jp4L}Ff>LgGL&5h2EJeQuL3;zH
z#C&YEJArN5G2Eo>Rgd91b#{Kt>9*xN`)#7;7(9}c<1Zv%Ny+iPq+>9etQ0H7kB}7U
z(Je^`*y^Dpuk!U<I-%{d`dMmr-Vv7~JSMQ%Efw1SP(Mw1U{;@(?;BvDdFQ_(jcTrE
zg1FQQQr_YvUNTnZmd0FeY)S7*f=h}5EOq62@?i*8X}8bidiqnV-MOAg>?Xgrcu47A
zf!(<L38B`Dy;uSV0oTx$jGT$laiQgaWXSP{*+k826ZI3MNs%(c9|`C}9h<A|m$kWe
z8y>(3K9wWxkL+TIV?K;r#Pp7^&3QGop8jVVK%LDm8h?gzU1!k+<WN<Xx-oQ=F>@tG
z0~|9>z?Y$H=X2*SX@G(T{Qxx#n#OzRM})L}#5DSt@$rzFV((}rwA!VRz1lDlw5!I;
zL{ncPSQ}!Ag|bf!+Ixw;%{PIDr$ic?l17N6jS{DZ5-5ygUlsf3UIRyTkFDmJiw2H8
zpuZ;3gU}{uXN;)n0japUgP`z^*lr@IQPT@Y*<Glo;dg+*k%e(%v+7McY1`gj&i2g>
zW41Fp(!h*kG4aDN$K1+QXt%RoZ5j$Yl3UH}h_q4lI;+}kZf4wN(o;5H^^AfN*+CrJ
zUrhD2!u=Aa&A4{oK@-O|bNJ1uS?aDZ%=_cVf<HAu9XDbI_Y1Nc6{>ZD)G2Yyq_5*z
zeJQ#wgLM&XN}!HO;8FF;LP-KrXdu~dLs|u@L=L4-=hwr<YwyPKzqWDwe^M{7o;`47
zK?*q)CV_e(ur7h~EW&wNvGjWaoOax^{6V!*3F!Yv0ub~R1#sN_F9A$sy0Dy?FsX$f
zL7p`I7W;QRndS}i^UPcJGixa_9Lo&L4AWY1n|#MCZC^EMtN3*N$#eyKu5+VVCFP$P
zwbI#mBJEIoy08<1by|O#zAyTl52Xp<xJxn8jmm8u$B$=vaThKWKS5_<76kPqi(D&4
z<V<^-{w21$rWxfeQrFY;S;=4j@miMUe`IM?Zs>C6!}Mc|^ew5?=ePJ2?BK+m%1-8U
zPi7wdP4c;Krg`skA;FG%1>CWCgC4RsRkd4ol6zhzCtxOYp6PIz>9ED35fU#Oum}`}
sTtk2ctnU`-H)OwW=B@&njRKisfl6xKU0`|fltq2yp{o3SDlA%m1MLpvssI20

delta 951
zcmZuvT}TvB6h3ozcJ9t7*1D<Ny5zRhW>FMT)JsZfQqo%N5B|hz3<%q#CcPvv(`FPI
zL14FsnOQ2Kz+QSPP$EiKsFkD$ONcE}>OrwYu!pc<JF`mq(7?w%-?{gE-??|r)1uo>
zU${DW&;|e&yojxcA;fzMaG3z~ZroCmJ>&t%;x~(lC+?;AuBW%Tw)iBnx%B|SQh;eZ
zbp=;&_r7_~OtQZ=p-b}ai(>1pi-q<=`y+CS5>05jrU#m~B)Br04~|T$oq0~1EBsI|
z0=`R>g(guBH1#91xP)BFaptvc$dh#n`EgfDO0}@Vw(zbm`mazX@{EiTQB_g8JT#4&
z@uiFg{Dgi3hC=CZ<M4zA<fYEiHvc}C@qm0LM5~}KqZu(9g&<LN`)q6>^gE)^{aPF4
zG}$;qHT5**wKxiM1>4w0zHCjUVRc2Ke9VuiWXJi^s-p%UTbH;luoG~E)BMH<JR{`J
z9H%6@DYlbx>Ib6)&f?1XSo981`1Em3U(xPFZ5JEj3krL%cD&7UNVoeDJqDZPy=AwI
zbi44+B90bsjg|8L<#NF@qL8k1D<6A-GWM=liWM($R%iECjAExNGWSqsshez@)epee
zi1iknI;T(QR-BcbB<o2~qW0Nm4EE6OWn;oNBAM)$5IDBiwEmIx9zrNj2_W|5G8UJR
zOF3>a5t*onYPmua0GWCS+O@^uO#Om!J{94m)V#qIddSypu0_M~j<li&Mml=UwA^lr
ziaWt=hG3Z%HQ5*qNHrz}Ud~r;n(PmC7j&ED%8vvuU%;8DGMV2|o&Ok9CAri$lbv$}
zeD{}2rf_31x6!~y_;TfELQ3_S+cRv?QSB~GT6e+clk*f0##SU@#Ofq>;dj$&bUeg4
zNCU@LXJ$-RA#N|ON;+t!MWQ!gB=j1G>^lzGo+P^@$_0%{3fXvm97tnwG{fe_8u#ET
dhk<_%133q0Pja=xROTu>Anquh{ExxA<X^7FJm~-c

diff --git a/imx/sdma/sdma-imx7d.bin b/imx/sdma/sdma-imx7d.bin
index ea847c5a90a2be81c0d77596698955f3e03203c9..148f4fe87bed695d16a610d91000feaa8317107e 100644
GIT binary patch
delta 1569
zcma)6eM}o=7=P~i_KqG6P)0vw1ZoGRBa9JUaLE+Zpb`@@Q$ET%%J6gsPaG_95t6%J
zOct|cng!o~de<XcjQ^PFk}WRr12-u%Y2x^c>5zhp!w{8`n9R%%)cU+FAG$5kHqYJj
z{GRuoulwEem+P#@-_hFs7y$q~N(D*-%2kx81aOoG7`wmLo87V%Ad9~h1oqsQ*N3)_
z^*vpG!v}Dw9H0`P{RmHWu^5Q$N7;k;gEjyO<9~wq*yRcRR+v+Y3tW)(U4q5lFM-qE
zgwyur*lPC(v1y}ZhqhZCB~|M5>~NvWw%pNgvulon&&4JA+4yS-N$!g~4)(@N?WOkj
zc_A9nErF}G`C;#}%Fb`;fVLazg~ar%Ll&aU$D!{x720mAA0*r`t<OsLbf9at@GehC
z%|u=moob0#+~O6z;&72m7<RgdC7cpCr_c+q*qMnecR{;H`(rW_=})Y7XCfzwOZ=(D
zE$06v#6^l9<|@3zO9XI;;2dzLoT(Tc<yv&XkmLujqsFz4`bAz9qD4k9TB~za*jL;4
zYkloB+(1THR}MKCZ9t3JtQl#;W(aGd5D`%YV1)@-*ka^|#CqPPM1D?#BBy>$AL5^C
ze8KoNoavn4uka346?rWb9ztX$k7z(*#tHZ=obK2+`IQEIyFt(Lfnw8mhhN}%tywgU
zKGCGtd9Ul5@sb!(UlfTpfMK|zbM&yyO)G3APh2!etV};H&}X2H)7~`#rW=G2zKg{6
zihNgfY$p~IFugE@cg|0{#zBPbb4QGs!Odt(7_BC7%SgX0Y()A7BUPAF%H}DDNk6nz
zH+xJH+dRgZ0W%*oJIKPa*T!bUsYi^M!St-;;<M#CPXDyM$)x3^LSO7%r|CLLHz`_$
z6m3$^%;hO6grAT1+jy;nFXbIdpU$rPbJv~?dai8H^E>q|?A{G$=7eyef)w?0wd)ie
zLl46x#nSI^FxYX&@$G6zsn!1vMWNlDBj}^%e-U&v)k&PGM@(8zcJUdL$|P7VBw4|X
zU999Fiam!gTS8kxo4!XXrORgi@kx_jC6D{V$r7CF%%QZB2u>Z6lWDm*=}>$+R|D-;
zS};kQ?7>EFQUoG9l>^C;^1DuCHPu5pNjA44CSV#kHH@B>oX43eOVT&&t<Iwed2`T(
zB%QYh{jaP=IsdOHA?0V?nL3>OGeZMHtM6v6YJMaw7b?rBGfhH`#s#12(<G~XCd?J^
zJsfe*e@wp>cX-OI0x@$y5>LQX_zV05ZsI3kx9E?8TvTU?kR5Oi0AFXB^E4_x={s(*
zG365+Lp`71n8gy5?z8@x;QV~IMJEdC8_wM$!`qf~fi22RWHpSW)Mk{=t!v6j$nG9n
z^6#p{Wf+QIw<Ng+SI4%s)sa>zb+#~8)L$$f7e!jRovT2~Y4r61zvm)Wd<83Zr`Fr7
RUYN*L;n_BRcb{eBe*<Sp?Ct;n

delta 988
zcmZuwZD<rn7=CwdZs&G$q`91zoH67s(VRzUX=sH8e+VsU6VpazbK&gO7+JK$ZM6M)
z%I<9u!4?bQ7)tjeEv1yE6f`Ij5d5JRkpp8}xDsgBPlQ&`_@f_C65I3LyVw+T;borZ
znRnjjo!ObwE&oQ6BmKj#QUD+r?HD~6moc`60FI+r?A+X14YdJO@moUST)d9=w-xse
zwZDVx+<JiM27uF;HH0IqW)y$Az`r1UL#8FGFBPN%y@lprbMO?|$A~WGPFShjW>ZK6
zk}!Br|DYifh>m<~#en7|Rm@3hDmR17=Q47+#(6T((V$uk!V|GlxHQhU2S$2tS$`{D
z<^owDlCCpiq?LQ9RO*TWbkRBq7nSnJ+m{v%AXhBD5a@a?YJW{`5Mpd&QF||o@_z!Y
zkzMwCEUO=6)R@3BLSqk~qA|XeHog9eO~=-mAB%h!3<^e<?b<OA^JJ8c?PO$h)7Xnl
z&|SL~-p5f$^3l(M!B;;&v?`Np)yA<}ch{s{J|zBEDT|dpwdb|9tYbD`q?@))q2XHE
zQB12Btxo!70q$n*kHWB^KeQGtA6MlFskWJTuwMpeZQd7b=X=B+@}tc^5>s!jV7v9B
z6qN=og|S>yXkJug<Z_MsOhP7UlAhL>3E*X6IA}b&<Ymv>M@ktQF3s6|S$r)y;54CO
z<#1WEQuBwiPFa1~k+irebi;7M*x>LzEG35>22>4e8Hazu;*A4NT3a%ys^gE79DbJd
zhmWAtT9dwWI0>ba2UnNO;KXumVmHmuwDzYNF1_pg{tF)r^~dix{$5DFtTt%35&K9+
z#BWOR=Ch99Xhji1WVb+NZ`R@8hn{bd+z|7|Wp)zgm8*CY9^g$_c6gJdHYQvK)rs%~
zkc2zs@eidp;stlj!9ZMhFkIguvcvtq!;JSPzZQC7<2TPR_{@FedD%Y{L0eHO+Enqc
z&MiF!SxpyyaAma{AH>Gh2T|5KO#c}y>A$%IuYXzlwdN|<5TBEiu{rE=0lSQqp6qSi
P^)tS6OLY3_t<mYn!}LtC

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
